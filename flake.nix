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
          version = "9.4.6";
          src = super.fetchPypi {
            pname = "mkdocs_material";
            inherit version;
            hash = "sha256-CWZeYN9+6eX/OlSvFz9tRb5xix7n3ZYrz/MQK4H7DBQ=";
          };
        });
        mkdocs-static-i18n = super.buildPythonPackage rec {
          pname = "mkdocs-static-i18n";
          version = "1.2.0";
          pyproject = true;
          src = super.fetchPypi {
            inherit version;
            pname = "mkdocs_static_i18n";
            hash = "sha256-S9D/7J8dlmtmrOhTAntYaImumksrgMQutR1CkOXOD9c=";
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
          mkdocs-awesome-pages-plugin
        ];
      };
    };

}
