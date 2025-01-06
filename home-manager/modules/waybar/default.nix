{
    programs.waybar = {
        enable = true;
        style = ./style.css;
        settings = {
            mainBar = {
                layer = "top";
                position = "top";
                height = 15;
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

                # Modules conf
                "hyprland/workspaces" = {
                    disable-scroll = true;
                    all-outputs = true;
                    warp-on-scroll = true;
                    active_only = false;
                    max-workspaces = 10;
                    format = "{icon}";
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
                    "on-click" = "~/bin/toggle_mute";
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

