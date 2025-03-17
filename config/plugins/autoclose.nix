{
  plugins.autoclose = {
    enable = true;

    settings = {
      keys = {
        "'" = {
          escape = true;
          close = true;
          pair = "''";
          disabled_filetypes = ["" "text" "markdown" "typst"];
        };
        "<" = {
          escape = true;
          close = true;
          pair = "<>";
          enabled_filetypes = ["typescriptreact" "javascriptreact"];
        };
      };

    };

  };
}
