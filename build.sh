#! /usr/bin/env nix-shell
#! nix-shell -i bash

# This script build app via nix-shell

gradle clean
gradle wrap
./gradlew build

# optional test and check
./gradlew check
./gradlew test

# install binaries to build/install/cg-local-app/bin/cg-local-app
./gradlew installDist
