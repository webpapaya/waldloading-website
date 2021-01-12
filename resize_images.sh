# /bin/bash

(cd images/gallery/fulls && rename --force 'y/A-Z/a-z/' *)

/usr/local/Cellar/graphicsmagick/1.3.35/bin/gm mogrify -resize 1290x1290 images/gallery/fulls/*.jpg;

rm -rf images/gallery/thumbs/*

(cd images/gallery/fulls && /usr/local/Cellar/graphicsmagick/1.3.35/bin/gm mogrify -create-directories -output-directory ../thumbs -resize '360x360^' -gravity center -extent 360x360 ./*.jpg)
