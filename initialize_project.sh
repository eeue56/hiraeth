#!/usr/bin/env bash

cd $1

npm init -y

python -c '\
from collections import OrderedDict; \
import json; \
pj = json.load(open("package.json"), object_pairs_hook=OrderedDict); \
pj["name"] = "@eeue56/" + pj["name"]; \
pj["license"] = "BSD-3-Clause"; \
pj["author"] = "eeue56"; \
pj["version"] = "0.0.1"; \
readme = open("README.md").readlines(); \
pj["description"] = readme[1].strip(); \
pj["keywords"].append("typescript")
pj["keywords"].append("hiraeth")
f = open("package.json", "w"); \
json.dump(pj, f, indent=4)'

npm install --save-dev typescript
npx tsc --init

python -c '\
tsconfig = open("tsconfig.json").read().splitlines(); \
tsconfig.insert(-1, ",\"include\": [ \"src/**/*\" ],"); \
tsconfig.insert(-1, "\"exclude\": [ \"node_modules/**\" ],"); \
f = open("tsconfig.json", "w"); \
f.write("\n".join(tsconfig))'

cd ../

./add_prettier.sh $1

echo -e "\n$1" >> .gitignore