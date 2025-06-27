{ ... }:
{
  programs.ssh = {
    enable = true;

    addKeysToAgent = "1h";

    controlMaster = "auto";
    controlPath = "~/.ssh/control-%r@%h:%p";
    controlPersist = "10m";

    matchBlocks = {
      "github-personal" = {
        hostname = "github.com";
        user = "git";
        identityFile = "~/.ssh/id_ed25519_personal";
      };
      "github-work" = {
        hostname = "github.com";
        user = "git";
        identityFile = "~/.ssh/id_ed25519";
      };
      # github = {
      #   host = "github.com";
      #   hostname = "ssh.github.com";
      #   user = "git";
      #   port = 443;
      #   identityFile = "~/.ssh/id_github";
      #   identitiesOnly = true;
      # };
    };
  };

  services.ssh-agent.enable = true;
}
