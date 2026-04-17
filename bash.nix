{config, pkgs, ...}:
{
 programs.bash = {
   enable = true; 
   
   shellAlases = {
   nx = "sudo nixos-rebuild switch --flake";
   fx = "sudo nix flake update --flake";



};


};




}
