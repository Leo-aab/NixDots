{ config, pkgs, ... }:
{
 imports = [
  #sway settings 
 ./sway.nix
 ./wbar.nix
  #pkgs - terminal configs - services
 ./pkgs.nix
 ./terminal/zsh.nix
 ./terminal/kitty.nix
 ./services/gtk.nix
 #pkg configs
 ./pkg/helix.nix
 ];

  home.username = "leo";
  home.homeDirectory = "/home/leo";
  home.stateVersion = "25.11"; 


  programs.home-manager.enable = true;
}

