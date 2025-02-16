{
  programs.alacritty = {
    enable = true;
    settings = {
      terminal = {
        shell = "fish";
      };
      scrolling = {
        history = 100000;
        multiplier = 5;
      };
      cursor = {
        style = {
          shape = "Beam";
          blinking = "Always";
        };
      };
      mouse = {
        hide_when_typing = true;
      };
      font = {
        normal = {
          family = "JetBrainsMono Nerd Font";
          style = "Regular";
        };
      };
      colors = {
        bright = {
          black = "#444b6a";
          blue = "#7da6ff";
          cyan = "#0db9d7";
          green = "#7da6ff";
          magenta = "#bb9af7";
          red = "#ff7a93";
          white = "#acb0d0";
          yellow = "#ff9e64";
        };
        normal = {
          black = "#32344a";
          blue = "#7aa2f7";
          cyan = "#449dab";
          green = "#7da6ff";
          magenta = "#ad8ee6";
          red = "#f7768e";
          white = "#787c99";
          yellow = "#e0af68";
        };
        primary = {
          background = "#0b1924";
          foreground = "#B7C9D9";
        };
      };
    };
  };
}
