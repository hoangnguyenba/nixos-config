{ inputs, pkgs, ... }:
let
  hyprland-pkgs =
    inputs.hyprland.inputs.nixpkgs.legacyPackages.${pkgs.stdenv.hostPlatform.system};
in
{
  hardware = {
    graphics = {
      enable = true;
      package = hyprland-pkgs.mesa;
      extraPackages = with pkgs; [
        intel-media-driver
        (vaapiIntel.override { enableHybridCodec = true; })
        vaapiVdpau
        libvdpau-va-gl
      ];
    };

    bluetooth.enable = true; # enables support for Bluetooth
    bluetooth.powerOnBoot = true; # powers up the default Blueto
    # hardware.bluetooth.settings.General.ControllerMode = "bredr";
  };
  hardware.enableRedistributableFirmware = true;

  # Enable Bluetooth GUI management
  services.blueman.enable = true;  # This provides the Bluetooth manager GUI
}
