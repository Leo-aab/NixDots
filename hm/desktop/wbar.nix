{
  config,
  pkgs,
  lib,
  ...
}:
{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;

        modules-left = [
          "sway/workspaces"
          "sway/mode"
        ];
        modules-center = [ "network" ];
        modules-right = [
          "pulseaudio"
          "cpu"
          "custom/gpu"
          "memory"
          "clock"
          "tray"
        ];

        "sway/workspaces" = {
          disable-scroll = true;
          all-outputs = true;
        };

        "sway/mode" = {
          format = "<span style=\"italic\">{}</span>";
        };

        "network" = {
          interface = "enp*";
          format-ethernet = "On Nix!  ";
          format-wifi = "";
          format-disconnected = "No Connection ⚠";
          tooltip-format = "{ifname} via {gwaddr}";
        };

        "pulseaudio" = {
          format = "{volume}% {icon}";
          max-volume = 150;
          format-muted = "0% 󰖁";
          format-icons = {
            default = [
              ""
              ""
              ""
            ];

          };
          on-click = "pavucontrol";
        };

        # Hardware
        "cpu" = {
          interval = 2;
          format = "{usage}% ";
          tooltip = false;
        };

        "custom/gpu" = {

          exec = "cat /sys/class/drm/card1/device/gpu_busy_percent";
          format = "{}% 󰢮";
          interval = 2;
          tooltip = false;
        };

        "memory" = {
          interval = 5;
          format = "{}% ";
          tooltip-format = "{used:0.1f}G / {total:0.1f}G";
        };
        "clock" = {
          format = "{:%H:%M - %d/%m/%Y}";
          format-alt = "{:%d/%m/%Y}";
          tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";

        };
        # Tray
        "tray" = {
          icon-size = 18;
          spacing = 10;
        };
      };
    };

    style = ''
      * {
        border: none;
        border-radius: 0;
        
        font-family: "JetBrainsMono Nerd Font", sans-serif; 
        font-size: 14px;
      }

      window#waybar {
        background-color: #000000;
        color: #ffffff;
      }

      #workspaces button {
        padding: 0 10px;
        color: #555555;
        background: transparent;
      }

      #workspaces button.focused {
        color: #ffffff;
        font-weight: bold;
      }

      #mode {
        background-color: #ffffff;
        color: #000000;
        padding: 0 10px;
      }

      #network {
        color: #89b4fa; 
      }

      #pulseaudio, #cpu, #custom-gpu, #memory, #clock,  #tray {
        padding: 0 12px;
        color: #ffffff;
      }


      #cpu { color: #ffffff; }
      #custom-gpu { color: #ffffff; }
      #memory { color: #ffffff; }
      #clock { color: #89b4fa; }
    '';
  };
}
