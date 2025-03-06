{ pkgs, ... }: {
    nixpkgs.config.allowUnfree = true;

	home.packages = with pkgs; [

        # Desktop apps
        firefox
        onlyoffice-desktopeditors
		alacritty
		telegram-desktop
        cassette
		mpv
		imv
		gparted
        gimp
		zoom-us
        nwg-look
        obsidian
        xfce.thunar

		# Coding stuff
        python313Full
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
        inxi

        wine

		# WM and stuff
		hyprland
		waybar
        hyprshot
        swww
        rofi

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
