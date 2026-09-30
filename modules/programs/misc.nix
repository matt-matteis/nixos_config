{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    spotify
    discord

    # From nixpkgs-unstable rather than stable - see modules/system/unstable.nix.
    unstable.claude-code
  ];
}
