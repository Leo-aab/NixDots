{ config, pkgs, lib, ... }:
{

 wayland.windowManager.sway = {
    enable = true;
     extraConfig = ''
      input * {
          xkb_layout "br"
          xkb_variant "abnt2"
      }
     workspace 1
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
 
 #window customizing   
 window = {
    border = 1;
    hideEdgeBorders = "smart";
    titlebar = false;
  }; 
   gaps = {
   inner = 6;
   outer = 3;

 };
   colors = {
    focused = {
      border = "#ffffff";
      background = "#ffffff";
      text = "#000000";
      indicator = "#d3d3d3";
      childBorder = "#ffffff";
    };
    unfocused = {
       border = "#262626";
       background = "#262626";
       text = "#808080";
       indicator = "#ffffff";
       childBorder = "#262626";
};
     urgent = {
      border = "#ff0000";
        background = "#ff0000";
        text = "#ffffff";
        indicator = "#ff0000";
 childBorder = "#ff0000";
};
  };
          
        # terminal
      terminal = "kitty";
      bars = [];
       startup = [
        {command = "waybar";}
        # Launch Firefox on start
        {command = "firefox";}
        {command = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";}
     ];
    };
  };   
}    
