{
  config,
  pkgs,
  lib,
  ...
}:
{
  #home pkgs
  home.packages = with pkgs; [
    #internet / media
    vesktop
    tty-clock
    amberol
    prismlauncher
    steam-run

    pfetch-rs

    #nixos config
    nil
    nixd
    # text editors

    helix
    git
    glow # markdown reader
    #goat shell lol
    zsh

    #c lang
    gcc
    gnumake
    gdb
    clang-tools
    llvmPackages.lldb

    #scheme lang
    sbcl
    # racket
    guile

    #sway tools
    waybar
    pavucontrol
    swaybg
    #screenshots tools - hypr
    fuzzel
    grim
    slurp
    wl-clipboard
    libnotify
    btop
    #thunar
    thunar
    thunar-archive-plugin
    thunar-volman
    tumbler
    polkit_gnome

    #icons fonts
    nerd-fonts.symbols-only

    #tools - wifi

    arp-scan
    speedtest-go
    bmon
    nethogs
    nmap
    wavemon
    doggo

  ];
}
