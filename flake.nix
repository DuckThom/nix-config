{
  description = "Tessa's dev environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # macOS support
    darwin.url = "github:LnL7/nix-darwin";
  };

  outputs = { self, nixpkgs, home-manager, darwin, ... }:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;

      config = {
        allowUnfree = true;
      };
    };
  in {

    homeConfigurations."tessa@quackpad" =
      home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        modules = [
          ./home/tessa.nix
          ./hosts/quackpad.nix
        ];
      };

    homeConfigurations."aloy@game-laptop" =
      home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        modules = [
          ./home/aloy.nix
          ./hosts/game-laptop.nix
        ];
      };


    # 🔹 placeholder for macOS
    # homeConfigurations."tessa@mac" = ...

  };
}
