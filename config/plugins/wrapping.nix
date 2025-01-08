{
  plugins.wrapping = {
    enable = false;

    settings = {
      notify_on_switch = false;
      create_keymaps = false;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>sw";
      action = "<cmd>ToggleWrapMode<cr>";
    }
  ];
}
