#!/bin/bash

set -e -o pipefail

mkdir -p release
cd release
git init
git config --local user.email "yangchuansheng33@gmail.com"
git config --local user.name "yangchuansheng"
git remote add origin https://yangchuansheng:$GITHUB_TOKEN@github.com/yangchuansheng/sing-geosite.git
git branch -M release
cp ../*.db ../*.sha256sum .
git add .
git commit -m "Update release"
git push -f origin release
