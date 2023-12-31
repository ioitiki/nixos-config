self: super:

{
  bun = super.bun.overrideAttrs (oldAttrs: rec {
    version = "1.0.20";
    src = super.fetchurl {
      url = "https://github.com/oven-sh/bun/releases/download/bun-v${version}/bun-linux-x64.zip";
      sha256 = "3484829701660df971c74f605a0a360a9c7f417c68ab8883718b97513d454e7f";
    };
  });
}
