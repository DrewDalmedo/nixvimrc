{
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
      provider = "openai";

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
}