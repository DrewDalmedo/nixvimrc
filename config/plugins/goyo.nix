{
  plugins.goyo = {
    enable = true;

    settings = {
      linenr = 1;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>go";
      action = "<cmd>Goyo<cr>";
    }
  ];
}
