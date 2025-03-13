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
      };

    };

  };
}
