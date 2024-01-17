self: super:

{
  bun = super.bun.overrideAttrs (oldAttrs: rec {
    version = "1.0.23";
    src = super.fetchurl {
      url = "https://github.com/oven-sh/bun/releases/download/bun-v${version}/bun-linux-x64.zip";
      sha256 = "20f4385bc078a6b94b9637fb3af886a58b6a3714b1301d641c230eae76f195dc";
    };
  });
}
