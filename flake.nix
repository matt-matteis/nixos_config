{
  description = "NixOS Config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-ff157.url = "github:nixos/nixpkgs/6fcc160353f63555b560f25588925133c8f61f2a";
  };

  outputs = { self, nixpkgs, ... }@inputs:
  {
    nixosConfigurations = {
      desktop = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [ ./hosts/desktop ];
      };

      laptop = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [ ./hosts/laptop ];
      };
    };
  };
}
