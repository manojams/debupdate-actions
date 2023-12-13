#!/bin/sh

cp -v $1 .
export FILES="sw-description $2"
for i in $FILES; do echo $i; done | cpio -ov -H crc >  update-image-6tops-v1.swu
