{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    spotify
    claude-code
    discord
  ];
}
