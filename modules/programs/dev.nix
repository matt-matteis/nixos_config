{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    python3
    git
    uv
  ];
}
