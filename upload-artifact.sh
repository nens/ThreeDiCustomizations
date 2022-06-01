#!/bin/bash
set -e
set -u

VERSION=$(grep "^version" ./ThreeDiCustomizations/metadata.txt | cut -d= -f2)

# ARTIFACTS_KEY should be set as env variable in the travis UI.
ARTIFACT=ThreeDiCustomizations.${VERSION}.zip
PROJECT=ThreeDiCustomizations

curl -X POST \
     --retry 3 \
     -H "Content-Type: multipart/form-data" \
     -F key=${ARTIFACTS_KEY} \
     -F artifact=@${ARTIFACT} \
     https://artifacts.lizard.net/upload/${PROJECT}/