{
  plugins.lsp = {
    enable = true;
    servers = {
      pyright = {
        enable = true;
        settings = {
          autoSearchPaths = true;
          useLibraryCodeForTypes = true;
          typeCheckingMode = "basic";
        };
      };
    };
  };
}
