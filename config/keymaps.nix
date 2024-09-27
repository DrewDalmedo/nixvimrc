{
  keymaps = [
    # file explorer
    {
      mode = "n";
      key = "<leader>pf";
      action = "<cmd>Ex<cr>";
    }

    # terminal
    {
      mode = "n";
      key = "<leader>pt";
      action = "<cmd>term<cr>";
    }
    {
      mode = "t";
      key = "<leader>dt";
      action = "<C-\\><C-n><cr>";
    }
  ];
}
