{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
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
    thunderbird
    openssl
    vlc
    terraform
    terragrunt
    tfswitch
    tgswitch
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
    # python311Packages.sqlalchemy
    # python311Packages.alembic
    bun
    # (nodeEnv.buildNodePackage {
    #   name = "graphql-codegen-cli";
    #   packageJSON = ./package.json;
    # })
  ];
}