#!/bin/sh

# Pull the latest changes from the repo
git pull

# Copy .sketch to .zip
cp web-ui-kit-marcosilva.sketch web-ui-kit-marcosilva.zip

# Unzip the file and delete
unzip -o web-ui-kit-marcosilva.zip -d sketch-data/ && rm -Rf web-ui-kit-marcosilva.zip

# Remove the preview file
rm -Rf sketch-data/previews/

git add sketch-data/
git add sketch-data/pages/
git add upload.sh
git add download.sh

# commit and push with a variable
git commit -m "$1" && git push
