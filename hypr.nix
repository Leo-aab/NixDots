{ config, pkgs, ... }:
{
 wayland.windowManager.hyprland = {
    enable = true;

    settings = {

      # Monitor — uses default detection, adjust if needed
      # e.g. monitor = "HDMI-A-1,1920x1080@60,0x0,1";
      monitor = ",preferred,auto,1";

      # Autostart
      exec-once = [
        "waybar"
      ];

      # Input
      input = {
        kb_layout = "br";
        kb_variant = "abnt2";
        follow_mouse = 1;
        touchpad.natural_scroll = false;
      };

      # General appearance
      general = {
        gaps_in = 5;
        gaps_out = 10;
        border_size = 2;
        "col.active_border" = "rgba(88c0d0ff)";
        "col.inactive_border" = "rgba(444444ff)";
        layout = "dwindle";
      };

      # Window decorations
      decoration = {
        rounding = 8;
        blur = {
          enabled = true;
          size = 6;
          passes = 2;
        };
      };

      # Animations
      animations = {
        enabled = true;
        bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
        animation = [
          "windows, 1, 5, myBezier"
          "windowsOut, 1, 5, default, popin 80%"
          "fade, 1, 5, default"
          "workspaces, 1, 4, default"
        ];
      };

      # Layout
      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      # Keybindings — SUPER as main modifier
      "$mod" = "SUPER";

      bind = [
        # Apps
        "$mod, Return, exec, kitty"
        "$mod, Q, killactive"
        "$mod, F, fullscreen"
        "$mod, V, togglefloating"
        "$mod, R, exec, wofi --show drun"

        # Focus
        "$mod, H, movefocus, l"
        "$mod, L, movefocus, r"
        "$mod, K, movefocus, u"
        "$mod, J, movefocus, d"

        # Move windows
        "$mod SHIFT, H, movewindow, l"
        "$mod SHIFT, L, movewindow, r"
        "$mod SHIFT, K, movewindow, u"
        "$mod SHIFT, J, movewindow, d"

        # Workspaces
        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"

        # Move window to workspace
        "$mod SHIFT, 1, movetoworkspace, 1"
        "$mod SHIFT, 2, movetoworkspace, 2"
        "$mod SHIFT, 3, movetoworkspace, 3"
        "$mod SHIFT, 4, movetoworkspace, 4"
        "$mod SHIFT, 5, movetoworkspace, 5"

        # Scroll through workspaces
        "$mod, mouse_down, workspace, e+1"
        "$mod, mouse_up, workspace, e-1"
      ];

      # Resize with mouse
      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];
    };
  };

  # Waybar
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;
        modules-left = [ "hyprland/workspaces" ];
        modules-center = [ "clock" ];
        modules-right = [ "pulseaudio" "network" "battery" "tray" ];

        "hyprland/workspaces" = {
          format = "{id}";
        };

        clock = {
          format = "{:%H:%M  %d/%m/%Y}";
        };

        network = {
          format-wifi = "  {essid}";
          format-ethernet = " {ifname}";
          format-disconnected = "󰤭 offline";
        };

        pulseaudio = {
          format = " {volume}%";
          format-muted = " muted";
          on-click = "pavucontrol";
        };

        battery = {
          format = "{icon} {capacity}%";
          format-icons = [ "" "" "" "" "" ];
        };

        tray = {
          spacing = 8;
        };
      };
    };

    style = ''
      * {
        font-family: "JetBrainsMono Nerd Font";
        font-size: 13px;
      }

      window#waybar {
        background-color: rgba(30, 30, 46, 0.9);
        color: #cdd6f4;
        border-bottom: 2px solid #88c0d0;
      }

      #workspaces button {
        padding: 0 8px;
        color: #888888;
      }

      #workspaces button.active {
        color: #88c0d0;
        border-bottom: 2px solid #88c0d0;
      }

      #clock, #network, #pulseaudio, #battery, #tray {
        padding: 0 10px;
        color: #cdd6f4;
      }
    '';
  };

  # wofi (app launcher)
  programs.wofi = {
    enable = true;
    settings = {
      show = "drun";
      width = 500;
      height = 300;
      insensitive = true;
    };
  };


}
