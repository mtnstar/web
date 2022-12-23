#!/bin/bash

PHOTO_DIR=$1

for f in $PHOTO_DIR/orig/*.JPG; do
  filename=$(basename $f .JPG)
  orig_file=$f
  #sm_file=$PHOTO_DIR/$filename-sm.jpg
  md_file=$PHOTO_DIR/$filename-md.jpg
  if [ ! -f $md_file ]; then
    echo "rezizing $filename"
    convert -resize "1280>" $orig_file $md_file
  fi
done

#mogrify -resize 50% $1*.JPG
