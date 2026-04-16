{config, pkgs, lib, ...}:
{
   #home pkgs
   home.packages = with pkgs; [
   vesktop
   vlc
   amberol
 
   #nixos config
   nil
   geany 
   helix
 
   git   
];


}
