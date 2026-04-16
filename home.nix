{ config, pkgs, ... }:
{
 imports = [
 ./kitty.nix
# ./i3wm.nix
./pkgs.nix
 ];

  home.username = "leo";
  home.homeDirectory = "/home/leo";

  home.stateVersion = "25.11"; 


  programs.home-manager.enable = true;
}

