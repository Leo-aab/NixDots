{ pkgs, ... }:

{
  programs.prismlauncher = {
    enable = true;

    settings = {
      ShowConsole = true;
      ConsoleMaxLines = 100000;

    };

  };
}
