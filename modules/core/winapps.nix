{ pkgs, inputs, ... }:

{
  environment.systemPackages = [
    inputs.winapps.packages."${pkgs.system}".winapps
    inputs.winapps.packages."${pkgs.system}".winapps-launcher # optional

    pkgs.freerdp

    # pkgs.xclip
    # pkgs.xsel

    pkgs.remmina
  ];
}
