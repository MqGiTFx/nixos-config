{ config, pkgs, user, ... }: {
    home = {
        username = user;
        homeDirectory = "/home/${user}";
        stateVersion = "24.11";
    };

    imports = [
        ./home-packages.nix
        ./modules
    ];
}
