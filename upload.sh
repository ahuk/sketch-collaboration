#!/bin/sh

# Pull the latest changes from the repo
git pull

files="web-ui-kit-marcosilva web-ui-kit-marcosilva2" # add a new file like this: "file1 file2 file3"
for f in $files
do
  # Copy .sketch to .zip
  cp $f.sketch $f.zip

  # Unzip the file and delete
  unzip -o $f.zip -d $f/
  rm -Rf $f.zip

  # Remove the preview file
  rm -Rf $f/previews/

  git add $f/
done

git add upload.sh
git add download.sh

# commit and push with a variable
git commit -m "$1" && git push
