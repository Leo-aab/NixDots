{ config, pkgs, ... }:
{
 imports = [
 ./sway.nix
 ./pkgs.nix
 ./terminal/zsh.nix
 ./terminal/kitty.nix
 ];

  home.username = "leo";
  home.homeDirectory = "/home/leo";
  home.stateVersion = "25.11"; 


  programs.home-manager.enable = true;
}

