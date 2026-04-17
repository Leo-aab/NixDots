{ config, pkgs, lib, ... }:
{

 wayland.windowManager.sway = {
    enable = true;
     extraConfig = ''
      input * {
          xkb_layout "br"
          xkb_variant "abnt2"
      }
     '';
    wrapperFeatures.gtk = true; 
    config = rec {
      modifier = "Mod4";

    keybindings = lib.mkOptionDefault {
     "${modifier}+Return" = "exec ${terminal}";
      "${modifier}+Shift+q" = "kill";
       "${modifier}+d" = "exec ${pkgs.fuzzel}/bin/fuzzel";
        
       #print
       "Print" = "exec ${pkgs.grim}/bin/grim -g \"$(${pkgs.slurp}/bin/slurp)\" - | ${pkgs.wl-clipboard}/bin/wl-copy"; 
};
      
 window = {
    border = 2;
    hideEdgeBorders = "smart";
    titlebar = false;
  };
   colors = {
    focused = {
      border = "#ff7af6";
      background = "#ff7af6";
      text = "#ffffff";
      indicator = "#2e9ef4";
      childBorder = "#285577";
    };
  };    
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
