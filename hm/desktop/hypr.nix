{
  inputs,
  pkgs,
  config,
  ...
}:
{
  wayland.windowManager.hyprland = {
    enable = true;
    configType = "hyprlang";
    systemd.variables = [ "--all" ];
    extraConfig = "";

  };
}
