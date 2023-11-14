self: super:

{
  bun = super.bun.overrideAttrs (oldAttrs: rec {
    version = "1.0.11";
    src = super.fetchurl {
      url = "https://github.com/oven-sh/bun/releases/download/bun-v${version}/bun-linux-x64.zip";
      sha256 = "a53f7e19c84d0b7be67858131741b3cf22f3581ac241c47f0c54552b60a71c2c";
    };
  });
}
