{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [

    # Desktop apps
    firefox
    wezterm
    xfce.thunar
    xfce.xfconf
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
    docker

    python313Full
    nodejs_23
    uv

    rustc
    cargo

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
