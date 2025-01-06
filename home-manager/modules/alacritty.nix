{
    programs.alacritty = {
        enable = true;
        settings = {
            terminal = {
                shell = "fish";
            };
            scrolling = {
                "history" = 100000;
                "multiplier" = 5;
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
        };
    };
}
