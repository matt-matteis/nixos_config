{ ... }:

{
  programs.firefox = {
    enable = true;
    preferences = {
      "browser.startup.homepage" = "https://www.google.com";
    };
    policies = {
      DisableTelemetry = true;
      FirefoxHome = {
        TopSites = false;
        SponsoredTopSites = false;
        Stories = false;
        Highlights = false;
        Snippets = false;
      };
      ExtensionSettings = {
        # Bitwarden Password Manager
        "{446900e4-71c2-419f-a6a7-df9c091e268b}" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/bitwarden-password-manager/latest.xpi";
          installation_mode = "force_installed";
          default_area = "navbar";
        };
      };
    };
  };
}
