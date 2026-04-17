{config, pkgs, lib, ...}:
{
   #home pkgs
   home.packages = with pkgs; [
   #internet
   vesktop
   vlc
   amberol
   

   #nixos config
   nil
   geany 
   helix
   git   
   #sway tools
   pavucontrol
   #screenshots tools - hypr
   grim
   slurp
   wl-clipboard
   libnotify

   thunar
   thunar-archive-plugin
   thunar-volman

];

}
