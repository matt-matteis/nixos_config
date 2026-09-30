# Exposes nixpkgs-unstable as `pkgs.unstable.*`, so individual packages can be
# pulled from unstable while everything else stays on the stable channel.
#
# Usage, from any module that takes { pkgs, ... }:
#     environment.systemPackages = [ pkgs.unstable.some-package ];
#
# NOTE: this is a separate nixpkgs evaluation. It does NOT inherit
# `nixpkgs.config` from nix-settings.nix, so allowUnfree has to be set again
# here - without it, unfree packages (claude-code, spotify, ...) fail to eval.
{ inputs, ... }:

{
  nixpkgs.overlays = [
    (final: prev: {
      unstable = import inputs.nixpkgs-unstable {
        inherit (prev) system;
        config.allowUnfree = true;
      };
    })
  ];
}
