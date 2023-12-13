#!/bin/sh

export FILES="$1 $2"
for i in $FILES; do echo $i; done | cpio -ov -H crc >  update-image-6tops-v1.swu
