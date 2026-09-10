{
  description = "NixOS Config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
  };

  outputs = { self, nixpkgs, ... }:
  {
    nixosConfigurations = {
      desktop = nixpkgs.lib.nixosSystem {
        modules = [ ./hosts/desktop ];
      };

      laptop = nixpkgs.lib.nixosSystem {
        modules = [ ./hosts/laptop ];
      };
    };
  };
}
