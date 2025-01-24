{ pkgs, ... }: {
    nixpkgs.config.allowUnfree = true;

	home.packages = with pkgs; [

        # Desktop apps
        firefox
        onlyoffice-desktopeditors
		alacritty
		xfce.thunar
		telegram-desktop
        cassette
		mpv
		imv
		gparted
        gimp
		zoom-us
        skypeforlinux
        nwg-look

		# Coding stuff
        python313
        pyright
        gcc

		# CLI utils
		fish
		git
		htop
		neofetch
		zip
		unzip
		ffmpeg
        glib

		# WM and stuff
		hyprland
		waybar
        hyprshot
        swww
		wofi

		# Sound
		pulseaudio
        alsa-utils

        # Fonts
        (nerdfonts.override {
            fonts = [
                "NerdFontsSymbolsOnly"
                "JetBrainsMono"
            ];
        })
	];
    fonts.fontconfig.enable = true;
}
