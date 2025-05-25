{
  plugins.neorg = {
    enable = true;

    settings = {
      load = {
        "core.defaults" = {
          __empty = null;
        };
        "core.dirman" = {
          config = {
            workspaces = {
              uni = "~/Documents/notes/uni";
              quant = "~/Documents/notes/quant";
              work = "~/Documents/notes/work";
            };
          };
        };
      };
    };
  };
}
