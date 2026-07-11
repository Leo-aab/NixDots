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
      background = "#000000";
      foreground = "#ebfcef";
      color0 = "#000000";
      color1 = "#f01d6e";
      color2 = "#36c277";
      color3 = "#ffca45";
      color4 = "#1e5bf7";
      color5 = "#9914ff";
      color6 = "#12e3e3";
      color7 = "#bababa";

      color8 = "#7d7d7d";
      color9 = "#f783b0";
      color10 = "#45ff9c";
      color11 = "#fcde90";
      color12 = "#5c89fa";
      color13 = "#ce8fff";
      color14 = "#8cf5f5";
      color15 = "#dbdbdb";

      confirm_os_window_close = 0;
      scrollback_lines = 10000;
    };
  };
}
