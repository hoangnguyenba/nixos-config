{ ... }:
{
  hardware = {
    bluetooth.enable = true; # enables support for Bluetooth
    bluetooth.powerOnBoot = true; # powers up the default Blueto
    # hardware.bluetooth.settings.General.ControllerMode = "bredr";
  };

  # Enable Bluetooth GUI management
  services.blueman.enable = true;  # This provides the Bluetooth manager GUI
}
