#!/bin/sh

# Pull the latest changes from the repo
git pull

# Zip core Sketch data
cd sketch-data/ && zip web-ui-kit-marcosilva.zip -r .

# Copy .zip to .sketch
cp web-ui-kit-marcosilva.zip ../web-ui-kit-marcosilva.sketch

# Remove zip
rm -Rf web-ui-kit-marcosilva.zip
