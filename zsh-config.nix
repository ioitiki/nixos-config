{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      # zsh
      rezsh = "source ~/.zshrc";
      zshrc = "code ~/.zshrc";
      # open workspaces
      scripts = "code ~/nft/scripts";
      graphql-marketplace = "code ~/nft/nft-marketplace-graphql";
      react-marketplace = "code ~/nft/nft-marketplace-react";
      react-dashboard = "code ~/nft/nft-dashboard-react";
      # k8s
      ke = "kubectl exec -it";
      knreact = "kubens $(kubens -c)-react";
      kngraph="kubens $(kubens -c | sed 's/-react$//')";
      krd = "kubectl rollout restart deployment";
      kn = "kubens";
      pods = "kubectl get pods";
      pima = "kubectl describe pods | grep 'Image:'";
      # nixos
      clean = "nix-collect-garbage";
      config = "code /etc/nixos";
      update = "sudo nixos-rebuild switch";
      # git
      gcm = "git commit -m";
      # yarn
      yd = "yarn deploy";
      ydd = "yarn deploy round-five";

      ".." = "cd ..";
    };
    ohMyZsh = {
      enable = true;
      plugins = [
        "git"
        "per-directory-history"
        "kubectl"
        "helm"
        "yarn"
      ];
    };
  };

  users.defaultUserShell = pkgs.zsh;
  environment.shells = with pkgs; [ zsh ];
}
