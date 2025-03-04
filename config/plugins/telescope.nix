{
  plugins.telescope = {
    enable = true;

    settings.defaults = {
      file_ignore_patterns = [
        "%.xlsx"
        "%.jpg"
        "%.png"
        "%.webp"
        "%.pdf"
        "%.odt"
        "%.ico"
      ];
    };
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
