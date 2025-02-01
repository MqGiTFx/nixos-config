{
    wayland.windowManager.hyprland = {
        enable = true;
        settings = {
            monitor = ",preferred,auto,auto";

            "$terminal" = "alacritty";
            "$fileManager" = "thunar";
            "$browser" = "firefox";
            "$menu" = "rofi -show drun -theme launcher.rasi";
            "$mainMod" = "SUPER";
            "$altMod" = "alt";
       };
    };
}
