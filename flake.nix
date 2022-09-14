{
  description = "Docs for fcitx5-android";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  inputs.flake-compat = {
    url = "github:edolstra/flake-compat";
    flake = false;
  };

  outputs = { self, nixpkgs, ... }:
    let pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in with pkgs; {
      devShells.x86_64-linux.default = mkShell {
        buildInputs = with python3Packages; [ mkdocs mkdocs-material ];
      };
    };

}
