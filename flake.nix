{
  description = "NixOS Config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";

    # Tracked separately and deliberately NOT `follows`-ed onto nixpkgs - the
    # whole point is a second, newer package set. See modules/system/unstable.nix.
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  # `@inputs` binds the whole input set so it can be handed to the modules.
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
