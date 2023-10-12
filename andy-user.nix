{ config, pkgs, ... }:

{
  users.users.andy = {
    openssh.authorizedKeys.keys = [
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDHjQcb4n7WN/L0udhZTpGXZFLylgYCGM+8cRIbGTMmHD/OMV/d96uH+XE9mRMR3NtqBm51ZnUf5EBVLG8F9ZW9X3ADcT6yH2OyIqiLjdo0i5TxqFWYzxGR4dcjZz8ot3/jC1kNb2JUctZjivZFe6uyvan8HA6lst4RXY+eFwWDRAxGKS+Rm7pEoUs6UmGw+rHEfhzHhPU/7/lu0tPuyS3INg55Ag70X160uL6+TDlgaWHMkgCQYr/zP/JHkff+qUU4yBLMZ9MHpj2IvaKckgSBG7ZsbyloEPs9SE9Kl7HzdzqFy+ULVHLBwtG1klkn1sUmbG88K2EveqiySV32VxKV andy"
    ];
    isNormalUser = true;
    description = "Andy";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
  };
}