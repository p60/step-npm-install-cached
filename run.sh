#!/bin/sh

set -x

repo_node_modules="$WERCKER_CACHE_DIR/wercker/npm-cache/$WERCKER_GIT_OWNER/$WERCKER_GIT_REPOSITORY/node_modules"
mkdir -p $repo_node_modules
ln -s $repo_node_modules $WERCKER_ROOT/node_modules
npm install $WERCKER_NPM_INSTALL_OPTIONS
npm prune
