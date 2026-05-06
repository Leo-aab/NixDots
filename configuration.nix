{ config, pkgs, ... }:

{
  imports = [ ./hardware-configuration.nix ];

  # Boot: using systemd-boot (EFI) with the latest kernel
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Networking
  networking.hostName = "WeAreStars";
  networking.networkmanager.enable = true;
   
  # Locale & timezone
  time.timeZone = "America/Sao_Paulo";
  i18n.defaultLocale = "pt_BR.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS        = "pt_BR.UTF-8";
    LC_IDENTIFICATION = "pt_BR.UTF-8";
    LC_MEASUREMENT    = "pt_BR.UTF-8";
    LC_MONETARY       = "pt_BR.UTF-8";
    LC_NAME           = "pt_BR.UTF-8";
    LC_NUMERIC        = "pt_BR.UTF-8";
    LC_PAPER          = "pt_BR.UTF-8";
    LC_TELEPHONE      = "pt_BR.UTF-8";
    LC_TIME           = "pt_BR.UTF-8";
  };
  
  #security polkit
  security.polkit.enable = true; 
  #services for thunar 
  
  services.udisks2.enable = true;
  services.gvfs.enable = true;
  # Enable experimental Nix features: flakes and the new CLI
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Desktop: XFCE with LightDM, Brazilian keyboard layout
  services.xserver.enable = true;
  services.xserver.displayManager.lightdm.enable = true;
  programs.sway.enable = true;
  services.xserver.xkb = {
    layout = "br";
    variant = "";
  };
  console.keyMap = "br-abnt2";

  # Printing
  services.printing.enable = true;

  # Audio: PipeWire with PulseAudio compatibility and 32-bit ALSA support
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # User account — set a password with 'passwd' after first boot
  users.users.leo = {
    isNormalUser = true;
    description = "leo - its me!";
    extraGroups = [ "networkmanager" "wheel" ];
  };
  
  programs.zsh.enable = true; 
  users.users.leo.shell = pkgs.zsh;
 
  programs.firefox.enable = true;
 
   nixpkgs.config.permittedInsecurePackages = [
    "ventoy-1.1.10"
  ];
  # Allow proprietary packages (e.g. drivers, some apps)
  nixpkgs.config.allowUnfree = true;
  # System-wide packages
  environment.systemPackages = with pkgs; [
   
  fastfetch
  ];
  # Do NOT change this after the initial install — it controls stateful data versions
  system.stateVersion = "25.11";
}
