#!/bin/sh

set -efux -o pipefail

## Create a temporary working folder
mkdir -p "tmp/"
cd "tmp/"


## Prepare datasets
rm -rf "tracker-radar/"
git clone --depth 1 "https://github.com/duckduckgo/tracker-radar" "tracker-radar/"


## Parse links
node "../src/script.js"

cd ../
