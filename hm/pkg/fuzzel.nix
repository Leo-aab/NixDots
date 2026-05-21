{ pkgs, lib, config, ... }:

{
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        
        icons-enabled = "no";
        
        font = "JetBrainsMono Nerd Font:size=12";
        prompt = "$$ ";
        width = 60;
        lines = 10;
        horizontal-pad = 20;
      };
      colors = {
        background = "000000ff";
        text = "ffffffff";
        match = "888888ff";
        selection = "ffffffff";
        selection-text = "000000ff";
        border = "ffffffff";
      };
      border = {
        width = 1;
        radius = 0;
      };
    };
  };
}


