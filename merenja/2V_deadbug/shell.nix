# shell.nix

{ pkgs ? import <nixpkgs> { } }:
# We pin to a specific nixpkgs commit for reproducibility.
# Last updatsed: 2024-04-29. Check for new commits at https://status.nixos.org.
pkgs.mkShell
{
  packages = [
    (pkgs.python3.withPackages
      (python-pkgs: with python-pkgs; [
        # select Python packages here
        pandas
        scipy
        pip
        numpy
        matplotlib
      ])
    )
  ];

  shellHook = ''
    zsh
  '';

}
