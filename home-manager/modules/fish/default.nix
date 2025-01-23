{
    programs.fish = {
        enable = true;  # Убедитесь, что fish включен

        # Установка алиасов
        shellAliases = {
            cls = "clear";
            n = "nvim";
            g = "git";
        };
    };
}
