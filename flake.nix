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
      packageOverrides = self: super: {
        mkdocs-material = super.mkdocs-material.overridePythonAttrs (old: rec {
          version = "9.5.30";
          src = super.fetchPypi {
            pname = "mkdocs_material";
            inherit version;
            hash = "sha256-P9QX3ULWeeO6CLni1yzYuK8ULMSjlpZ2rWsAmT3Rguw=";
          };
        });
        mkdocs-static-i18n = super.buildPythonPackage rec {
          pname = "mkdocs-static-i18n";
          version = "1.2.3";
          pyproject = true;
          src = super.fetchPypi {
            inherit version;
            pname = "mkdocs_static_i18n";
            hash = "sha256-fM9Npt0pVw7EnNhj6/9v75y4LbscuFJJvfdE6Ng5yRQ=";
          };
          propagatedBuildInputs = with self; [
            setuptools
            mkdocs
            mkdocs-material
            hatchling
          ];
        };
      };
      python = pkgs.python3.override { inherit packageOverrides; };
    in with pkgs; {
      devShells.x86_64-linux.default = mkShell {
        buildInputs = with python.pkgs; [
          mkdocs
          mkdocs-material
          mkdocs-static-i18n
        ];
      };
    };

}
