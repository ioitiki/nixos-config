{ pkgs, ... }:

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
      charts = "code ~/nft/charts";
      ".ssh" = "code ~/.ssh";
      marketplace-graphql = "code ~/nft/nft-marketplace-graphql";
      marketplace-react = "code ~/nft/nft-marketplace-react";
      dashboard-graphql = "code ~/nft/nft-dashboard-graphql";
      dashboard-react = "code ~/nft/nft-dashboard-react";
      monorepo = "code ~/nft/monorepo";
      rail = "code ~/coding/railbird";
      verified-fans-graphql = "code ~/verified-fans/verified-fans-graphql";
      verified-fans-react = "code ~/verified-fans/verified-fans-react";
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
      sgit = "sudo git";
      # yarn
      yd = "yarn deploy";
      ydd = "yarn deploy round-five";
      ydp = "yarn deploy release";
      # bun
      b = "bun";
      bi = "bun install";
      bd = "bun run deploy";
      bunx = "bun x";
      buni = "bun run ./index.ts";
      # poetry
      p = "poetry";
      pc = "poetry config";
      pi = "poetry install";

      ".." = "cd ..";
    };
    # test
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
