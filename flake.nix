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

  outputs = { nixpkgs, home-manager, ... } @ inputs:
  let
    system = "x86_64-linux";
    users = [ "meowta" ];
    hosts = [ "pro" ];
  in {
    nixosConfigurations = builtins.listToAttrs (map (host: {
      name = host;
      value = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [ ./hosts/${host}/configuration.nix ];
        specialArgs = { inherit inputs; };
      };
    }) hosts);

    homeConfigurations = builtins.listToAttrs (map (user: {
      name = user;
      value = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.${system};
        modules = [ ./users/${user}/home-manager/home.nix ];
        extraSpecialArgs = { inherit inputs user; };
      };
    }) users);
  };
}
