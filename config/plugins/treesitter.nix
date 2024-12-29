{
  plugins.treesitter = {
    enable = true;

    settings = {
      ensure_installed = [
        "c"
        "lua"
        "nix"
      ];
    };
  };
}
