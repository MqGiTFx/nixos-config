{ pkgs, ... }: {
    nixpkgs.config.allowUnfree = true;

	home.packages = with pkgs; [
		# Desktop apps
		firefox
		alacritty
		xfce.thunar
		telegram-desktop
        cassette
		mpv
		imv
		gparted
        gimp
		zoom-us

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
