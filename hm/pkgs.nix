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
    vlc
    amberol
    btop

    #MUSSSIXCCCCCSSS
    spotify
    #nixos config
    nil
    nixd
    
    helix
    git
    zsh
    #sway tools
    waybar
    pavucontrol
    #screenshots tools - hypr
    fuzzel
    grim
    slurp
    wl-clipboard
    libnotify

    #thunar
    thunar
    thunar-archive-plugin
    thunar-volman
    tumbler
    polkit_gnome
    
    #icons fonts 
    nerd-fonts.symbols-only

    #tools 
    
      ];
}
