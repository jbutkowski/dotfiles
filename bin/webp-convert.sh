#!/bin/bash

# # converting JPEG images
#   image.jpg => image.webp
# find $1 -type f -and \( -iname "*.jpg" -o -iname "*.jpeg" \) \
# -exec bash -c '
# webp_path=$(sed 's/\.[^.]*$/.webp/' <<< "$0");
# if [ ! -f "$webp_path" ]; then
#   cwebp -quiet -q 90 "$0" -o "$webp_path";
# fi;' {} \;

# converting JPEG images
#   image.jpg => image.jpg.webp
find $1 -type f -and \( -iname "*.jpg" -o -iname "*.jpeg" \) \
-exec bash -c '
webp_path=$(sed 's/\$/.webp/' <<< "$0");
if [ ! -f "$webp_path" ]; then
  cwebp -quiet -preset photo "$0" -o "$webp_path";
fi;' {} \;

# # converting PNG images
#   image.png => image.webp
# find $1 -type f -and -iname "*.png" \
# -exec bash -c '
# webp_path=$(sed 's/\.[^.]*$/.webp/' <<< "$0");
# if [ ! -f "$webp_path" ]; then
#   cwebp -quiet -lossless "$0" -o "$webp_path";
# fi;' {} \;

# converting PNG images
#   image.png => image.png.webp
find $1 -type f -and -iname "*.png" \
-exec bash -c '
webp_path=$(sed 's/\$/.webp/' <<< "$0");
if [ ! -f "$webp_path" ]; then
  cwebp -quiet -lossless -preset photo "$0" -o "$webp_path";
fi;' {} \;
