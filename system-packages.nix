{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    beekeeper-studio
    python311
    poetry
    vim
    wget
    geckodriver
    firefox
    nodejs_18
    yarn
    awscli2
    kubectl
    kubectx
    vscode
    pgadmin4
    gparted
    ventoy
    docker
    kubernetes-helm
    zip
    unzip
    brave
    yubioath-flutter
    slack
    # dbeaver
    # thunderbird
    openssl
    vlc
    # terraform
    # terragrunt
    # tfswitch
    # tgswitch
    chromium
    gimp
    morgen
    joplin-desktop
    woeusb
    nix-prefetch-git
    xorg.xmodmap
    xcape
    rnix-lsp
    nil
    ngrok
    node2nix
    android-studio
    android-tools
    obs-studio
    sqlite
    mailspring
    # gnumake
    # libgcc
    ntfs3g
    clang
    # nodePackages.node-gyp
    bun
    cloc
    # gnome.cheese
  ];
}