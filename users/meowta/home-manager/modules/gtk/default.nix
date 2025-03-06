{ pkgs, ... }: {
    gtk = {
        enable = true;
        iconTheme = {
            package = pkgs.catppuccin-papirus-folders.override {
                flavor = "mocha";
                accent = "lavender";
            };
            name = "Papirus-Dark";
        };
        theme = {
            name = "catppuccin-mocha-lavender-compact";
            package = pkgs.catppuccin-gtk.override {
                accents =  [ "lavender" ];
                variant = "mocha";
                size = "compact";
            };
        };
        gtk3.extraConfig.gtk-application-prefer-dark-theme = true;
        gtk4.extraConfig.gtk-application-prefer-dark-theme = true;
};
}
