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
