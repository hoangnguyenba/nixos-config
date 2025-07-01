{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ## Lsp
    nixd # nix

    ## formating
    shfmt
    treefmt
    nixfmt-rfc-style

    ## C / C++
    gcc
    gdb
    gef
    cmake
    gnumake
    valgrind
    llvmPackages_20.clang-tools

    # code languages
    go
    php
    php.packages.composer
    # php84Packages.composer
    nodejs
    yarn
    pnpm
    python3
    # python312Packages.ipython
    uv    
  ];
}
