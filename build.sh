#!/bin/bash

cd /content
source build/envsetup.sh
lunch cm_e400-userdebug

make bacon -j$(nproc)