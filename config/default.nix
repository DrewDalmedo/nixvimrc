{
  # basic modules
  imports = [ 
    # base editor options, keymaps, colorscheme, etc
    ./options.nix
    ./keymaps.nix
    ./colorscheme.nix

    ./plugins
  ];

  # Automatically imports all Lua files from the lua/ directory and its subdirectories,
  # adding each one manually is annoying
  extraFiles = let
    luaPath = ./lua;

    # function to recursively get all files in a directory
    getFiles = dir: let
      dirFiles = builtins.readDir dir;

      handleEntry = name: type: let
        path = dir + "/${name}";

        # get the relative path by removing the luaPath prefix
        relPath = "lua/" + builtins.replaceStrings
          ["${toString luaPath}/"] 
          [""]
          (toString path);
      in
        if type == "directory"
        then getFiles path
        else { 
          "${relPath}".text = builtins.readFile path; 
        };

      # map over all entries in the directory
      entries = builtins.mapAttrs handleEntry dirFiles;
    in
      builtins.foldl' (a: b: a // b) {} (builtins.attrValues entries);
  in
    getFiles luaPath;
}
