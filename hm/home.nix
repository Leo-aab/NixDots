{
  config,
  pkgs,
  inputs,
  lib,
  ...
}:
{
  imports = [
    #sway settings
    ./desktop/sway.nix
    ./desktop/wbar.nix

    #pkgs - terminal configs - services
    ./pkgs.nix
    ./terminal/zsh.nix
    ./terminal/kitty.nix

    ./services/gtk.nix

    #pkg configs
    ./pkg/helix.nix
    ./pkg/fuzzel.nix
    ./pkg/prism.nix
    ./pkg/spicetify.nix
  ];

  home.username = "leo";
  home.homeDirectory = "/home/leo";
  home.stateVersion = "25.11";

  programs.home-manager.enable = true;

  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "inode/directory" = [ "thunar.desktop" ];
    };
  };

}
