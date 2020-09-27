# /bin/bash

/usr/local/Cellar/graphicsmagick/1.3.35/bin/gm mogrify -resize 1290x1290 images/gallery/fulls/*.jpg;
/usr/local/Cellar/graphicsmagick/1.3.35/bin/gm mogrify -create-directories -output-directory ../thumbs -gravity center -crop 1280x960+0+0 images/gallery/fulls/*.jpg;