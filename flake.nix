{
  description = "My Stardust Flakes...!!";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
     home-manager = {
    url = "github:nix-community/home-manager";
    inputs.nixpkgs.follows = "nixpkgs";
  };

  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {
    nixosConfigurations = {
      WeAreStars = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
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
