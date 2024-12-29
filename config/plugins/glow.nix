# md preview in terminal
{
  plugins.glow = {
    enable = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>pp";
      action = "<cmd>Glow<cr>";
    }
  ];
}
