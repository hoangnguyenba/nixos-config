{ pkgs, ... }:
{
  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5 = {
      waylandFrontend = true;
      addons = with pkgs; [
        # fcitx5-unikey
        fcitx5-bamboo
        fcitx5-configtool
        fcitx5-gtk
      ];
    };
  };
}
