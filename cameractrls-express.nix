{ lib, stdenv, fetchFromGitHub, SDL2, turbojpeg }:

stdenv.mkDerivation rec {
  pname = "cameractrls";
  version = "0.5.11";

  src = fetchFromGitHub {
    owner = "soyersoyer";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256";
  };

  buildInputs = [ SDL2 turbojpeg ];

  buildPhase = ''
    make
  '';

  installPhase = ''
    make install PREFIX=$out
  '';
}
