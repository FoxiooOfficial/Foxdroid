#!/bin/bash

cd /content
find . -name "*:Zone.Identifier" -delete

if [ "$1" == "clean" ]; then
    make installclean
fi

source build/envsetup.sh
lunch cm_e400-userdebug

make bacon -j$(nproc)