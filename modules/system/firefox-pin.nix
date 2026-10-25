{ inputs, ... }:

{
  nixpkgs.overlays = [
    (final: prev: {
      firefox = (import inputs.nixpkgs-ff157 {
        inherit (prev.stdenv.hostPlatform) system;
        config.allowUnfree = true;
      }).firefox;
    })
  ];
}
