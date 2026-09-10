{ ... }:

{
  imports = [
    ./hardware-configuration.nix

    ../../modules/system/nix-settings.nix
    ../../modules/system/boot.nix
    ../../modules/system/locale.nix
    ../../modules/system/networking.nix
    ../../modules/system/power.nix

    ../../modules/hardware/firmware.nix
    ../../modules/hardware/nvidia.nix
    ../../modules/hardware/audio.nix

    ../../modules/desktop/gnome.nix

    ../../modules/programs/browsers.nix
    ../../modules/programs/editors.nix
    ../../modules/programs/gaming.nix
    ../../modules/programs/cli-tools.nix
    ../../modules/programs/dev.nix
    ../../modules/programs/misc.nix
    ../../modules/programs/cooling.nix

    ../../modules/users/lab.nix
  ];

  networking.hostName = "desktop";

  # The NixOS release this machine was first installed from. This is stateful
  # data compatibility, not a version to keep current — never bump it on an
  # existing install. See `man configuration.nix`.
  system.stateVersion = "26.05";
}
