{ config, pkgs, lib, ... }:
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
    wrapperFeatures.gtk = true; 
    config = rec {
      modifier = "Mod4";

keybindings = lib.mkOptionDefault {
  "${modifier}+Return" = "exec ${terminal}";
  "${modifier}+Shift+q" = "kill";
  "${modifier}+d" = "exec ${pkgs.fuzzel}/bin/fuzzel";
  # Printscreen: Selecionar área e copiar para o clipboard
  "Print" = "exec ${pkgs.grim}/bin/grim -g \"$(${pkgs.slurp}/bin/slurp)\" - | ${pkgs.wl-clipboard}/bin/wl-copy";
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
