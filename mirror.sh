#!/usr/bin/env sh
set -eu

https="https://"
gitext=".git"

git remote add mirror "$https$INPUT_GITHUB_USERNAME:$INPUT_ACCESS_TOKEN@github.com/$INPUT_TARGET_REPO$gitext"
git push --tags --force --prune mirror "refs/remotes/origin/*:refs/heads/*"
