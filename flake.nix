{
  description = "My Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... } @ inputs:
  let
    system = "x86_64-linux";
    homeStateVersion = "24.11";
    users = [
        "meowta"
    ];
    hosts = [
        { hostname = "pro"; stateVersion  = "24.11"; }
    ];
  in {
    nixosConfigurations = builtins.listToAttrs (map (host: {
      name = host.hostname;
      value = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [ ./hosts/${host.hostname}/configuration.nix ];
        specialArgs = { inherit inputs; stateVersion = host.stateVersion; };
      };
    }) hosts);

    homeConfigurations = builtins.listToAttrs (map (user: {
      name = user;
      value = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.${system};
        modules = [ ./users/${user}/home-manager/home.nix ];
        extraSpecialArgs = { inherit inputs user homeStateVersion; };
      };
    }) users);
  };
}
