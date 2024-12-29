{
  plugins.neogit = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>mg";
      action = "<cmd>Neogit<cr>";
    }
  ];
}
