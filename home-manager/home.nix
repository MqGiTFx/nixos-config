{ config, pkgs, ... }: {
    home = {
        username = "meowta";
        homeDirectory = "/home/meowta";
        stateVersion = "24.11";
    };

    imports = [
        ./home-packages.nix
        ./modules
    ];
                       }
