{
  plugins.typst-vim = {
    enable = true;
  };

  keymaps = [
    # watch file for changes
    {
      mode = "n";
      key = "<leader>cp";
      action = "<cmd>TypstWatch<cr>";
    }
  ];
}
