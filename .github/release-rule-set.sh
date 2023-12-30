#!/bin/bash

set -e -o pipefail

cd rule-set
git init
git config --local user.email "yangchuansheng33@gmail.com"
git config --local user.name "yangchuansheng"
git remote add origin https://yangchuansheng:$GITHUB_TOKEN@github.com/yangchuansheng/sing-geosite.git
git branch -M rule-set
git add .
git commit -m "Update rule-set"
git push -f origin rule-set
