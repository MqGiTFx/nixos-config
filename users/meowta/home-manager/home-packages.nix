{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [

    # Desktop apps
    firefox
    onlyoffice-desktopeditors
    alacritty
    telegram-desktop
    cassette
    mpv
    imv
    gimp
    zoom-us
    nwg-look
    obsidian
    xfce.thunar

    # Coding stuff
    python313Full
    pyright
    ruff
    uv

    gcc

    # CLI utils
    fish
    git
    htop
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
