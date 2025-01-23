{
	description = "My Flake";
	
	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";

		home-manager = {
			url = "github:nix-community/home-manager/release-24.11";
			inputs.nixpkgs.follows = "nixpkgs";
		};
        stylix.url = "github:danth/stylix";
	};
	outputs = { nixpkgs, home-manager, ... }:
	let
		system  = "x86_64-linux";
		user = "meowta";
	in {
		nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
			inherit system;
			modules = [ ./hosts/pro/configuration.nix ];
		};

		homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
			pkgs = nixpkgs.legacyPackages.${system};
			modules = [ ./home-manager/home.nix ];
		};
	};
}
