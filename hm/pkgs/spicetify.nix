 {config, pkgs, libs, ...}:
{
imports = [ inputs.spicetify-nix.homeManagerModules.default ];

programs.spicetify = {
  enable = true;
  theme = "comfy";
  colorScheme = "dark";
};



}
