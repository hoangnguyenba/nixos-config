{
  inputs,
  pkgs,
  ...
}:
let
  ollama = inputs.ollama.packages.${pkgs.system}.default;
in
{
  home.packages = [ ollama ];
}
