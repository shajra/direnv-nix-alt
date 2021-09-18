let pkgs = import <nixpkgs> { config = {}; overlays = []; };
in pkgs.stdenv.mkDerivation rec {
    name = "direnv-nix-lorelei-testcase";
    DIRENV_NIX_LORELEI = name;
    nativeBuildInputs = [ pkgs.hello ];
}
