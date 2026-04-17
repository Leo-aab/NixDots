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
   zsh
   #sway tools
   pavucontrol
   #screenshots tools - hypr
   grim
   slurp
   wl-clipboard
   libnotify
   
   #thunar
   thunar
   thunar-archive-plugin
   thunar-volman
   polkit_gnome
];

}
