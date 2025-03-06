{
    wayland.windowManager.hyprland.settings = {
        exec-once = [
            "waybar"
            "swww init"
            "bash /nixos-config/bin/change_wallpaper.sh"
        ];
    };
}
