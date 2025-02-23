{
  plugins.lsp = {
    enable = false;
    servers = {
      pyright = {
        enable = true;
        settings = {
          autoSearchPaths = true;
          useLibraryCodeForTypes = true;
          typeCheckingMode = "basic";
        };
      };

      ltex = {
        enable = true;
      };
    };
  };
}
