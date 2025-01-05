{ config, pkgs, ... }: {
	home = {
		username = "meowta";
		homeDirectory = "/home/meowta";
		stateVersion = "24.11";

		packages = with pkgs; [
			alacritty
			kitty
			git
		];

	};
}
