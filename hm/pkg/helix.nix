{
  config,
  lib,
  pkgs,
  ...
}:
  {
    programs.helix = {
      enable = true;
      settings = {
      editor = {
        cursor-shape ={
          normal = "block";
          insert = "bar";
          select = "underline";
          
        };
        insert-final-newline = true;
        line-number = "relative";
       
      };
      theme = "carbonfox";
      };
    };
  }
