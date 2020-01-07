{ ansible-lint, hlint, shellcheck, ormolu, hindent, cabal-fmt, canonix, elmPackages, niv
, gitAndTools, runCommand, writeText, writeScript, git, nixpkgs-fmt, nixfmt, nix-linter
, callPackage, pythonPackages
}:

{
  inherit ansible-lint hlint shellcheck ormolu hindent cabal-fmt canonix nixpkgs-fmt nixfmt;
  inherit (elmPackages) elm-format;
  inherit (pythonPackages) yamllint;
  inherit (nix-linter) nix-linter;
  terraform-fmt = callPackage ./terraform-fmt {};
}
