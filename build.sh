#!/bin/bash

apt-get update && apt-get install -y build-essential lib32ncurses5-dev make python git curl gnupg bison flex gperf libsdl1.2-dev libesd0-dev libwxgtk2.8-dev squashfs-tools zip zlib1g-dev libncurses5-dev g++-multilib lib32z1-dev openjdk-6-jdk wget

cd /content
source build/envsetup.sh
lunch cm_e400-userdebug

make bacon -j$(nproc)