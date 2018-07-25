#! /usr/bin/env nix-shell
#! nix-shell -i bash

# This script run app via nix-shell

# make it runable from anywhere
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

APP=build/install/cg-local-app/bin/cg-local-app

# build if app not exists
[[ -x $APP ]] || ./build.sh

# run app if already installed
[[ -x $APP ]] && ./$APP
