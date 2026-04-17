{ config, pkgs, ... }:
{

 wayland.windowManager.sway = {
    enable = true;
     extraConfig = ''
      input * {
          xkb_layout "br"
          xkb_variant "abnt2"
          xkb_options "caps:escape"
      }
    '';
    wrapperFeatures.gtk = true; # Fixes common issues with GTK 3 apps
    config = rec {
      modifier = "Mod4";

      # terminal
      terminal = "kitty"; 
      startup = [
        # Launch Firefox on start
        {command = "firefox";}
        {command = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";}
     ];
    };
  };   
}    
