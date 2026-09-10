{ lib, ... }:

{
  systemd.targets = {
    sleep.enable = false;
    suspend.enable = false;
    hibernate.enable = false;
    hybrid-sleep.enable = false;
  };

  services.logind.settings.Login = {
    HandlePowerKey = "lock";
    HandlePowerKeyLongPress = "ignore";
    HandleSuspendKey = "lock";
    HandleHibernateKey = "lock";
    HandleLidSwitch = "ignore";
    HandleLidSwitchExternalPower = "ignore";
    HandleLidSwitchDocked = "ignore";
    IdleAction = "ignore";
  };

  programs.dconf.profiles.user.databases = [
    {
      lockAll = true;
      settings = {
        "org/gnome/settings-daemon/plugins/power" = {
          power-button-action = "nothing";

          sleep-inactive-ac-type = "nothing";
          sleep-inactive-battery-type = "nothing";

          sleep-inactive-ac-timeout = lib.gvariant.mkInt32 0;
          sleep-inactive-battery-timeout = lib.gvariant.mkInt32 0;
        };
      };
    }
  ];
}
