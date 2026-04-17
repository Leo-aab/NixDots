{ config, pkgs, ... }:
{
 imports = [
 ./kitty.nix
 ./sway.nix
 ./pkgs.nix
 ./zsh.nix
 ];

  home.username = "leo";
  home.homeDirectory = "/home/leo";
  home.stateVersion = "25.11"; 


  programs.home-manager.enable = true;
}

