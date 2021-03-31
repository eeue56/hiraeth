#!/usr/bin/env bash

cd $1

npm install --save-dev git+https://github.com/eeue56/prettier.git#feat/spacing-around-square-brackets

python -c '\
from collections import OrderedDict; \
import json; \
pj = json.load(open("package.json"), object_pairs_hook=OrderedDict); \
pj["scripts"]["format"] = "npx prettier --write ."; f = open("package.json", "w");\
json.dump(pj, f, indent=4)'

cp ../.prettierignore ./
cp ../.prettierrc.json ./

git add .prettierignore
git add .prettierrc.json

npm run format