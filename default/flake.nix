{
  description = "basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/release-23.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        # package configuration
        packages.default = pkgs.hello;
        # devShell configuration
        devShells.default = pkgs.mkShell {
          packages = [ ];
        };
      }
    );
}
