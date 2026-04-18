{
  config,
  pkgs,
  lib,
  ...
}:
{
  #home pkgs
  home.packages = with pkgs; [
    #internet
    vesktop
    vlc
    amberol
    btop

    #nixos config
    nil
    nixd
    zed-editor
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
    polkit_gnome
  ];

}
