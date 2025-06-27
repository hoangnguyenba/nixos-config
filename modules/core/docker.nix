{ user, username, pkgs, ... }: {

  # Install necessary packages
  environment.systemPackages = with pkgs; [
    docker
    podman
    podman-compose
    lazydocker
    podman-desktop
  ];

  users.users.${username}.extraGroups = [ "docker" ];

  virtualisation.docker = {
    enable = true;
  };

  virtualisation.containers = {
    enable = true;
    registries.search = [ "docker.io" "quay.io" ];
    policy = {
      default = [ { type = "insecureAcceptAnything"; } ];
      transports = {
        docker-daemon = {
          "" = [ { type = "insecureAcceptAnything"; } ];
        };
      };
    };
  };
}