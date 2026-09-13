{ pkgs, ... }:
{
  # config kitty
  programs.kitty = {
    enable = true;
    font = {
      name = "JetBrainsMono Nerd Font";
      size = 10;
    };
    settings = {
      background = "#05061E";
      foreground = "#F4F1E6";

      color0 = "#0A0F42";
      color1 = "#C4467A";
      color2 = "#7A8C3A";
      color3 = "#D9A62B";
      color4 = "#2A3FB8";
      color5 = "#C4467A";
      color6 = "#5FD3E8";
      color7 = "#C9CBE8";

      color8 = "#3B4590";
      color9 = "#E8974A";
      color10 = "#A8BC5A";
      color11 = "#F2C55C";
      color12 = "#5C89E8";
      color13 = "#E87BAE";
      color14 = "#8CE8F5";
      color15 = "#F4F1E6";

      confirm_os_window_close = 0;
      scrollback_lines = 10000;
    };
  };
}
