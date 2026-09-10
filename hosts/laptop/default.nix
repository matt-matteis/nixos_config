{ ... }:

{
  imports = [
    ./hardware-configuration.nix

    ../../modules/system/nix-settings.nix
    ../../modules/system/locale.nix
    ../../modules/system/networking.nix

    ../../modules/hardware/firmware.nix
    ../../modules/hardware/audio.nix

    ../../modules/desktop/gnome.nix

    ../../modules/programs/browsers.nix
    ../../modules/programs/editors.nix
    ../../modules/programs/cli-tools.nix
    ../../modules/programs/dev.nix
    ../../modules/programs/misc.nix

    ../../modules/users/lab.nix
  ];

  networking.hostName = "laptop";

  boot.loader.grub = {
    enable = true;
    device = "/dev/sda";
    useOSProber = true;
  };
  
  system.stateVersion = "26.05";
}
