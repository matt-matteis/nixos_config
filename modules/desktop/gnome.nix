{ ... }:

{
  services.xserver.enable = true;

  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;

  programs.dconf.enable = true;
  programs.dconf.profiles.user.databases = [
    {
      lockAll = true;
      settings = {
        "org/gnome/shell" = {
          favorite-apps = [
            "firefox.desktop"
            "org.gnome.Nautilus.desktop"
            "org.gnome.Console.desktop"
          ];
        };

        "org/gnome/desktop/interface" = {
          color-scheme = "prefer-dark";
        };
      };
    }
  ];
}
