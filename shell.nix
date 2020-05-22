{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    (pkgs.agda.withPackages (p: [
      p.standard-library
    ]))
  ];
}
