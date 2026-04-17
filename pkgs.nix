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
];

   programs.thunar = {
   enable = true;
   plugins = with pkg.xfce; [
     thunar-archive-plugin
     thunar-volman
     thunar-media-tags-plugin
  

];

};

   
}
