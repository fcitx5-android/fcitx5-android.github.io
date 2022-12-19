{
  description = "Docs for fcitx5-android";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  inputs.flake-compat = {
    url = "github:edolstra/flake-compat";
    flake = false;
  };

  outputs = { self, nixpkgs, ... }:
    let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      mkdocs-static-i18n = pkgs.python3Packages.buildPythonPackage {
        pname = "mkdocs-static-i18n";
        version = "0.53";
        src = pkgs.fetchFromGitHub {
          owner = "ultrabug";
          repo = "mkdocs-static-i18n";
          rev = "3b0c4a8978b5f706265ebed4deee4ca1cd726353";
          sha256 = "Agxw/viwqNaojPOf2IckTMqEs09IurgTcMfRfMBjBso=";
        };
        propagatedBuildInputs = with pkgs.python3Packages; [
          setuptools
          mkdocs
          mkdocs-material
        ];
      };
    in with pkgs; {
      devShells.x86_64-linux.default = mkShell {
        buildInputs = with python3Packages; [
          mkdocs
          mkdocs-material
          mkdocs-static-i18n
        ];
      };
    };

}
