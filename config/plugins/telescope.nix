{
  plugins.telescope = {
    enable = true;
  };
  
  plugins.web-devicons.enable = true;

  keymaps = [
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>Telescope find_files<cr>";
    }
    {
      mode = "n";
      key = "<leader>fg";
      action = "<cmd>Telescope live_grep<cr>";
    }
    {
      mode = "n";
      key = "<leader>hh";
      action = "<cmd>Telescope help_tags<cr>";
    }
  ];
}
