{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wget
    curl
    jq
    file
    tcpdump
  ];
}
