{config, pkgs, lib, ... }:
{
gtk = {
  enable = true;
  
  theme = {
    package = pkgs.sweet;
    name = "Sweet-Dark";
  };

  iconTheme = {
    package = pkgs.kora-icon-theme;
    name = "kora";
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
