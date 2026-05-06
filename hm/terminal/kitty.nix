{pkgs, ... }:
{
# config kitty
  programs.kitty = {
    enable = true;
    themeFile = "Glacier";
    settings = {
      confirm_os_window_close = 0;
      scrollback_lines = 10000;
    };
};
}
