{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    spotify
    discord
    unstable.claude-code
  ];
}
