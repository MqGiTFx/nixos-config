{
    programs.waybar = {
        enable = true;
        style = ./style.css;
        settings = {
            mainBar = {
                layer = "top";
                position = "top";
                height = 35;
                background = "#282a36";
                foreground = "#f8f8f2";
                border = "none";
                "modules-left" = [
                    "hyprland/workspaces"
                ];

                "modules-center" = [
                    "hyprland/language"
                    "clock"
                    "pulseaudio"
                ];

                "modules-right" = [
                ];

                "hyprland/workspaces" = {
                    active-only = false;
                    disable-scroll = true;
                    format = "{icon}";
                    on-click = "activate";
                    format-icons = {
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
                        sort-by-number = true;
                    };
                    persistent-workspaces = {
                        "1" = [];
                        "2" = [];
                        "3" = [];
                        "4" = [];
                        "5" = [];
                        "6" = [];
                        "7" = [];
                        "8" = [];
                        "9" = [];
                        "10" = [];
                    };
                };
                "hyprland/language" = {
                    "format" = "{shortDescription}";
                    "on-click" = "";
                    "min-length" = 5;
                    "tooltip" = false;
                };

                "pulseaudio" = {
                    "format" = "{icon} {volume}%";
                    "format-muted" = "  muted";
                    "format-icons" = {
                        "headphone" = "";
                        "default" = [" " " " " "];
                    };
                    "on-click" = "bash /nixos-config/users/\${USER}/bin/toggle_mute.sh";
                };

                "clock" = {
                    "tooltip-format" = "{:%Y-%m-%d | %H:%M}";
                    "format" = "{:%H:%M:%S}";
                    "format-alt" = "{:%d.%m.%Y}";
                    "interval" = 5;
                };
            };
        };
    };
}

