#!/bin/sh
git pull
cd sketch-data/
zip web-ui-kit-marcosilva.zip -r .
cp web-ui-kit-marcosilva.zip ../web-ui-kit-marcosilva.sketch
rm -Rf web-ui-kit-marcosilva.zip
