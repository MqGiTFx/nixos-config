{
    wayland.windowManager.hyprland = {
        enable = true;
        settings = {
            monitor = ",preferred,auto,auto";

            "$terminal" = "alacritty";
            "$fileManager" = "thunar";
            "$browser" = "firefox";
            "$menu" = "wofi --show drun";
            "$mainMod" = "SUPER";
            "$altMod" = "alt";
        };
    };
}
