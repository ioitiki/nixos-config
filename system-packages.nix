{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    python311
    poetry
    vim
    wget
    geckodriver
    firefox
    nodejs_20
    yarn
    awscli2
    kubectl
    kubectx
    vscode
    pgadmin4
    whatsapp-for-linux
    telegram-desktop
    gparted
    ventoy
    docker
    kubernetes-helm
    zip
    unzip
    brave
    yubioath-flutter
    slack
    dbeaver
    # thunderbird
    openssl
    vlc
    # terraform
    # terragrunt
    # tfswitch
    # tgswitch
    gimp
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
    libsForQt5.bismuth
    # mailspring
    # nodePackages.node-gyp
    gnumake
    libgcc
    # electron
    ntfs3g
    clang
    # python311Packages.sqlalchemy
    # python311Packages.alembic
    bun
    cloc
    # (nodeEnv.buildNodePackage {
    #   name = "graphql-codegen-cli";
    #   packageJSON = ./package.json;
    # })
  ];
}