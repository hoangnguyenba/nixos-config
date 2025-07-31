{ pkgs, ... }:
{
  home.packages = with pkgs; [

    # editors
    vscode

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

    # tools
    ollama

    # code languages
    go
    php
    php.packages.composer
    # php84Packages.composer
    nodejs
    yarn
    pnpm
    bun
    python3
    python313Packages.pip
    # python312Packages.ipython
    uv
  ];
}
