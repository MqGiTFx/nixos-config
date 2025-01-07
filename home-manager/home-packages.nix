{ pkgs, ... }: {
    nixpkgs.config.allowUnfree = true;

	home.packages = with pkgs; [
		# Desktop apps
		firefox
		alacritty
		xfce.thunar
		telegram-desktop
		mpv
		imv
		wofi
		gparted
		zoom-us

		# Coding stuff
        gcc

		# CLI utils
		fish
		git
		htop
		neofetch
		zip
		unzip
		ffmpeg
		brightnessctl

		# WM and stuff
		hyprland
        swaybg # +++
        wpaperd # ???
		waybar

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
