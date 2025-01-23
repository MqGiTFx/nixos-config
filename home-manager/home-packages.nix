{ pkgs, ... }: {
    nixpkgs.config.allowUnfree = true;

	home.packages = with pkgs; [

        alsa-utils

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
        wpaperd
		waybar
		wofi

		# Sound
		pulseaudio

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
