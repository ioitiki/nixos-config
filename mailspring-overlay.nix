self: super:

let
  # Import the specific channel. Ensure that this path matches the channel you have added
  nixos-24_05 = import <nixos-24.05> {};
in
{
  # Override the mailspring package
  mailspring = nixos-24_05.mailspring;
}
