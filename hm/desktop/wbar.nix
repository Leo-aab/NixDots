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
        border-radius: 0px;
        font-family: "JetBrainsMono Nerd Font", sans-serif;
        font-size: 14px;
        transition: background-color 0.2s ease, color 0.2s ease;
      }

      window#waybar {
        background-color: #05142b;
          color: #F4F1E6;
        border-bottom: 2px solid #D9A62B;
      }

      #workspaces {
        margin: 4px 4px;
        padding: 0 4px;
        background-color: rgba(244, 241, 230, 0.06);
        border-radius: 10px;
      }

      #workspaces button {
        padding: 0 10px;
        margin: 2px;
        color: #8B93C9;
        background: transparent;
        border-radius: 8px;
      }

      #workspaces button:hover {
        background-color: rgba(95, 211, 232, 0.15);
        color: #5FD3E8;
      }

      #workspaces button.focused {
        color: #10186B;
        background-color: #D9A62B;
        font-weight: bold;
      }

      #mode {
        background-color: #E8974A;
        color: #10186B;
        padding: 0 12px;
        margin: 4px;
        font-weight: bold;
      }

      #network {
        color: #5FD3E8;
        padding: 0 12px;
      }

      #pulseaudio, #cpu, #custom-gpu, #memory, #clock, #tray {
        padding: 0 12px;
        margin: 4px 2px;
        color: #F4F1E6;
        background-color: rgba(244, 241, 230, 0.06);
      }

      #pulseaudio {
        color: #E8974A;
      }
      #pulseaudio:hover {
        background-color: rgba(232, 151, 74, 0.15);
      }

      #cpu { color: #F4F1E6; }
      #custom-gpu { color: #F4F1E6; }
      #memory { color: #F4F1E6; }

      #clock {
        color: #10186B;
        background-color: #D9A62B;
        font-weight: bold;
        padding: 0 14px;
      }

      #tray {
        background-color: rgba(196, 70, 122, 0.15);
      }
      #tray > .passive {
        -gtk-icon-effect: dim;
      }
      #tray > .needs-attention {
        background-color: #C4467A;
      }
    '';
  };
}
