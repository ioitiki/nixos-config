self: super:

{
  bun = super.bun.overrideAttrs (oldAttrs: rec {
    version = "1.0.12";
    src = super.fetchurl {
      url = "https://github.com/oven-sh/bun/releases/download/bun-v${version}/bun-linux-x64.zip";
      sha256 = "f845add7f62d1b3266fe54413eb7f544ce7174c545316bab44d05000200b7120";
    };
  });
}
