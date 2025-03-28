{
  programs.waybar = {
    enable = true;
    style = ./style.css;
    settings = {
      "mainBar" = {
        "layer" = "top";
        "position" = "top";
        "height" = 35;
        "modules-left" = [
          "custom/rofi_launcher"
          "hyprland/workspaces"
        ];

        "modules-center" = [
          "hyprland/language"
          "clock"
          "pulseaudio"
          "pulseaudio#microphone"
        ];

        "modules-right" = [
          "cpu"
          "disk"
          "memory"
        ];

        "hyprland/workspaces" = {
          "active-only" = false;
          "disable-scroll" = true;
          "format" = "{icon}";
          "on-click" = "activate";
          "format-icons" = {
            "1" = "1";
            "2" = "2";
            "3" = "3";
            "4" = "4";
            "5" = "5";
            "6" = "6";
            "7" = "7";
            "8" = "8";
            "9" = "9";
            "10" = "10";
            "sort-by-number" = true;
          };
          "persistent-workspaces" = {
            "1" = [ ];
            "2" = [ ];
            "3" = [ ];
            "4" = [ ];
            "5" = [ ];
            "6" = [ ];
            "7" = [ ];
            "8" = [ ];
            "9" = [ ];
            "10" = [ ];
          };
        };
        "hyprland/language" = {
          "format" = "{shortDescription}";
          "on-click" = "";
          "min-length" = 5;
          "tooltip" = false;
        };

        "pulseaudio" = {
          "format" = " {icon} {volume}% ";
          "format-muted" = "  muted ";
          "format-icons" = {
            "headphone" = "";
            "default" = [ " " " " " " ];
          };
          "on-click" = "bash /nixos-config/users/\${USER}/bin/toggle_mute.sh";
        };

        "pulseaudio#microphone" = {
          "format" = "{format_source}";
          "format-source" = " {volume}% ";
          "format-source-muted" = " muted ";
          "on-click" = "pamixer --default-source -t";
          "on-click-right" = "pavucontrol";
          "on-scroll-up" = "pamixer --default-source -i 1";
          "on-scroll-down" = "pamixer --default-source -d 1";
        };

        "clock" = {
          "tooltip-format" = "<tt><small>{calendar}</small></tt>";
          "format" = "{:%H:%M:%S}";
          "interval" = 5;
          "calendar" = {
            "mode" = "month";
            "on-scroll" = 1;
            "format" = {
              "months" = "<span color='#b4befe'><b>{}</b></span>";
              "days" = "<span color='#b4befe'><b>{}</b></span>";
              "weeks" = "<span color='#b4befe'><b>{}</b></span>";
              "weekdays" = "<span color='#b4befe'><b>{}</b></span>";
              "today" = "<span color='#74c7ec'><b>{}</b></span>";
            };
          };
          "actions" = {
            "on-scroll-up" = "shift_up";
            "on-scroll-down" = "shift_down";
            "on-click" = "shift_reset";
          };
        };
        "cpu" = {
          "interval" = 10;
          "format" = "   {usage}% ";
        };
        "disk" = {
          "format" = " 󰋊 {percentage_used}% ";
          "interval" = 3600;
        };
        "memory" = {
          "interval" = 10;
          "format" = "   {used}GB/{total}GB ";
        };
        "custom/rofi_launcher" = {
          "format" = " 󱄅 ";
          "tooltip-format" = "Launching rofi";
          "on-click" = "rofi -show drun -theme launcher.rasi -location 1 -yoffset 35";
        };
      };
    };
  };
}

