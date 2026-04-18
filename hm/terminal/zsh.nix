{config, pkgs, ...}:
{
 programs.zsh = {
   enable = true; 
   
   shellAliases = {
   nx = "sudo nixos-rebuild switch --flake";
   nixop = "sudo nix-store --optimise";
   fx = "sudo nix flake update --flake .";
   cln = "sudo nix-collect-garbage -d";
  
 
};
};




}
