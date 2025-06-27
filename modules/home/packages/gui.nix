{ inputs, pkgs, ... }:
{
  home.packages = with pkgs; [

    slack

    #dev tools
    postman
    bruno
    bruno-cli
    dbeaver-bin
    inputs.tableplus.packages."${system}".default

    ## Multimedia
    audacity
    gimp
    obs-studio
    pavucontrol
    soundwireserver
    video-trimmer
    vlc

    ## Office
    libreoffice
    gnome-calculator

    ## Utility
    dconf-editor
    gnome-disk-utility
    mission-center # GUI resources monitor
    zenity

    ## Level editor
    ldtk
    tiled
  ];
}
