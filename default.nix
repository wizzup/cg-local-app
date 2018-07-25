# NOTE: nix-build is not working due to Nix and gradle incompatibility,
#       gradle in nix-shell is usable

with (import <nixpkgs> {});

stdenv.mkDerivation rec {
  pname = "cg-local-app";
  version = "git";
  name = "${pname}-${version}";
  src = ./.;
  buildInputs = [ oraclejdk gradle kotlin ];

  # buildPhase = ''
  #   export GRADLE_USER_HOME=$PWD
  #   gradle clean
  #   gradle wrap
  #   ./gradlew build
  # '';
  #
  # checkPhase = ''
  #   ./gradlew check
  #   ./gradlew test
  # '';
  #
  # installPhase = ''
  #   ./gradlew installDist
  #   cp ./build/install/cg-local-app/bin $out/bin
  #   cp ./build/install/cg-local-app/lib $out/lib
  # '';
}
