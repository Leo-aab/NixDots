{config, pkgs, ...}:
{
 programs.bash = {
   enable = true; 
   
   shellAliases = {
   nx = "sudo nixos-rebuild switch --flake";
   fx = "sudo nix flake update --flake";



};
};




}
