{
  pkgs,
  config,
  lib,
  ...
}:

{
  boot.kernelModules = [ "amdgpu" ];
  services.xserver.videoDrivers = [ "amdgpu" ];

  hardware.graphics = {
    enable = true;
    enable32Bit = true;

    # extraPackages = with pkgs; [
    #  rocmPackages.clr.icd
    #];
  };
}
