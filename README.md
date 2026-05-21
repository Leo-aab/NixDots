

## Nix CONFIG! - Stardust Sway
![NixOS](https://img.shields.io/badge/NixOS-5277C3?logo=nixos&logoColor=white) ![Home Manager](https://img.shields.io/badge/Home%20Manager-blue?logo=homeadvisor&logoColor=white) ![Flakes](https://img.shields.io/badge/Flakes-5E81AC?logo=nixos&logoColor=white)




Before you rebuild your system, run this command to replace my hardware settings with yours:

```bash
nixos-generate-config --show-hardware-config > hardware-configuration.nix
```
to switch this default (my original pc) hardware configuration

and try this:
```bash
sudo nixos-rebuild switch --flake .  
```
reboot your system :)) with `reboot`




```
hm/ - home modules
 ./desktop - wm config
     ./pkg - pkgs config    
       ./services - services config
         ./terminal - terminal && shell config
            home.nix - home default config
            pkgs.nix - pkg installer module

configuration.nix - global system config
  ./sm - system modules
flake.lock && flake.nix - inputs and outputs system unstable version
```
