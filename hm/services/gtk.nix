{
  config,
  pkgs,
  lib,
  ...
}:
{
  gtk = {
    enable = true;

    theme = {
      package = pkgs.graphite-gtk-theme;
      name = "Graphite-Dark";
    };

    iconTheme = {
      package = pkgs.papirus-icon-theme;
      name = "Papirus-Dark";
    };
    gtk4.theme = config.gtk.theme;
    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };

    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };

  };
}
