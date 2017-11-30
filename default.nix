with import <nixpkgs> {};

rec {
  gdax-tt-playground = stdenv.mkDerivation rec {
    name = "gdax-tt-playground";
    src = ./.;

    buildInputs = [
      nodejs-8_x
      yarn
    ];

    shellHook = ''
      export PATH="$PATH:$(realpath ./node_modules/.bin)"
    '';
  };
}
