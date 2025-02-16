{
    home.file.".themes/VALYRIAN-Total-Steel".source = ../../../GTK/themes/VALYRIAN-Total-Steel;
    home.file.".icons/Tokyonight-Moon".source = ../../../GTK/icons/Tokyonight-Moon;

    gtk = {
        enable = true;
        theme = {
            name = "VALYRIAN-Total-Steel";
            package = null;
        };
        iconTheme = {
            name = "Tokyonight-Moon";
            package = null;
        };
        gtk3.extraConfig = {
            gtk-application-prefer-dark-theme = 1;
        };
        gtk4.extraConfig = {
            gtk-application-prefer-dark-theme = 1;
        };
    };
}
