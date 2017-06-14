#!/bin/sh

# Pull the latest changes from the repo
git pull

# Copy .sketch to .zip
cp sketch-test.sketch sketch-test.zip

# Unzip the file and delete
unzip -o sketch-test.zip -d sketch-data/ && rm -Rf sketch-test.zip

# Remove the preview file
rm -Rf sketch-data/previews/

git add sketch-data/
git add sketch-data/pages/
git add upload.sh
git add download.sh

# commit and push with a variable
git commit -m "$1" && git push
