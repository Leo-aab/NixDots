{
  config,
  lib,
  pkgs,
  ...
}:
{
  programs.helix = {
    enable = true;

    extraPackages = [ ];

    settings = {
      editor = {
        cursor-shape = {
          normal = "block";
          insert = "bar";
          select = "underline";

        };
        insert-final-newline = true;
        line-number = "relative";

      };
      theme = "carbonfox";
    };

    languages.language = [
      {
        name = "nix";
        auto-format = true;
        language-servers = [
          "nil"
          "nixd"
        ];
      }
    ];

  };
}
