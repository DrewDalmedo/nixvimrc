{ pkgs, lib, ... }:

{
  # dependency for avante
  # TODO: replace with implementation in nixvim when added
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "img-clip-nvim";
      src = pkgs.fetchFromGitHub {
        owner = "HakonHarnes";
        repo = "img-clip.nvim";
        rev = "24c13df08e3fe66624bed5350a2a780f77f1f65b";  # You can specify a specific version/commit hash here
        sha256 = "sha256-ASkGB4Id9TF2C0B9wx7l7dSdBKoRJlZfjIOuWvZ3eZc=";
      };
    })
  ];

  plugins.avante = {
    enable = true;

    settings = {
      # replace with whatever provider you want
      # providers:
      #   - openai
      #   - claude
      #   - azure 
      #   - copilot
      #   - gemini 
      provider = "claude";

      openai = {
        model = "gpt-4o";
      };

      claude = {
        endpoint = "https://api.anthropic.com";
        model = "claude-3-5-sonnet-latest";
        temperature = 0;
        max_tokens = 4096;
      };

      diff = {
        autojump = true;
        debug = false;
        list_opener = "copen";
      };

      hints.enabled = true;

      # keybinds
      mappings = {
        diff = {
          both = "cb";
          next = "]x";
          none = "c0";
          ours = "co";
          prev = "[x";
          theirs = "ct";
        };
        jump = {
          next = "]]";
          prev = "[[";
        };        
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>al";
      action = "<cmd>AvanteClear<cr>";
    }
  ];
}
