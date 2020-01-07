{ ansible-lint, hlint, shellcheck, ormolu, hindent, cabal-fmt, canonix, elmPackages, niv
, gitAndTools, runCommand, writeText, writeScript, git, nixpkgs-fmt, nixfmt, nix-linter
, callPackage, pythonPackages
}:

{
  inherit ansible-lint hlint shellcheck ormolu hindent cabal-fmt canonix nixpkgs-fmt nixfmt nix-linter;
  inherit (elmPackages) elm-format;
  inherit (pythonPackages) yamllint;
  terraform-fmt = callPackage ./terraform-fmt {};
}
