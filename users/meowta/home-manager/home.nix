{ user, homeStateVersion, ... }: {
    home = {
        username = user;
        homeDirectory = "/home/${user}";
        stateVersion = homeStateVersion;
    };

    imports = [
        ./home-packages.nix
        ./modules
    ];
}
