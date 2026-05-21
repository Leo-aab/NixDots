{
  description = "My Stardust Flakes...!!";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";

    };
    spicetify-nix = {
      url = "github:Gerg-L/spicetify-nix";
      inputs.nixpkgs.follows = "nixpkgs";

    };
  };

  outputs =
    inputs@{
      self,
      nixpkgs,
      home-manager,
      spicetify-nix,
      ...
    }:
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations = {
        WeAreStars = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            ./configuration.nix
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.extraSpecialArgs = { inherit inputs; };
              home-manager.useUserPackages = true;
              home-manager.users.leo = import ./hm/home.nix;
            }
          ];
        };
      };
    };
}
