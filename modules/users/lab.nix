{ pkgs, ... }:

{
  users.users."lab" = {
    isNormalUser = true;
    description = "lab";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      # thunderbird
    ];
  };
}
