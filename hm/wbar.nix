{config, pkgs, lib, ...}:
{
#waybar config omg 
programs.waybar = {
  enable = true;
  
  settings = {
    mainBar = {
      layer = "top";
      position = "top";
      height = 30;
      
      modules-left = [ "hyprland/workspaces" "hyprland/mode" ];
      modules-center = [ "clock" ];
      modules-right = [ "pulseaudio" "network" "battery" "tray" ];
      
      "hyprland/workspaces" = {
        disable-scroll = true;
        all-outputs = true;
      };
      
      clock = {
        format = "{:%H:%M}";
        tooltip-format = "{:%A, %d %B %Y}";
      };
      
      battery = {
        states = {
          warning = 30;
          critical = 15;
        };
        format = "{capacity}% {icon}";
        format-icons = [ "" "" "" "" "" ];
      };
      
      network = {
        format-wifi = "{essid} ({signalStrength}%) ";
        format-ethernet = "{ipaddr}/{cidr} ";
        format-disconnected = "Disconnected ⚠";
      };
      
      pulseaudio = {
        format = "{volume}% {icon}";
        format-muted = "";
        format-icons = {
          default = [ "" "" ];
        };
        on-click = "pavucontrol";
      };
    };
  };
  
  style = ''
    * {
      border: none;
      border-radius: 0;
      font-family: "JetBrainsMono Nerd Font";
      font-size: 13px;
      min-height: 0;
    }

    window#waybar {
      background: rgba(21, 18, 27, 0.9);
      color: #cdd6f4;
    }

    #clock,
    #battery,
    #network,
    #pulseaudio,
    #tray {
      padding: 0 10px;
      color: #cdd6f4;
    }

    #battery.warning {
      color: #fab387;
    }

    #battery.critical {
      color: #f38ba8;
    }
  '';
};






}
