{
    programs.fish = {
        enable = true;

        shellAliases = {
            cls = "clear";
            n = "nvim";
            g = "git";
            pcv3 = "python3 -m venv venv";
            pav3 = ". ./venv/bin/activate.fish";
        };
    };
}
