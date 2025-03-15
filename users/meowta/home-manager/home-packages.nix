{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [

    # Desktop apps
    firefox
    alacritty
    xfce.thunar
    onlyoffice-desktopeditors
    libsForQt5.kdenlive
    telegram-desktop
    cassette
    gimp
    zoom-us
    nwg-look
    obsidian
    imv
    mpv

    # Coding stuff
    python313Full
    pyright
    ruff
    uv

    gcc

    # CLI utils
    fish
    git
    tree
    btop
    fastfetch
    zip
    unzip
    ffmpeg
    cava
    glib
    inxi
    wine

    # WM and stuff
    hyprland
    waybar
    hyprshot
    swww
    dunst
    rofi

    # Sound
    pulseaudio
    pamixer
    alsa-utils

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
