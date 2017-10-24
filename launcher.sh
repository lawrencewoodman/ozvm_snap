#!/usr/bin/env bash

export JAVA_HOME=$SNAP/usr/lib/jvm/java-8-openjdk-$SNAP_ARCH
export PATH=$JAVA_HOME/jre/bin:$SNAP/usr/bin/:$PATH

# Not good, needed for fontconfig
export XDG_DATA_HOME=$SNAP/usr/share
# Font Config
export FONTCONFIG_PATH=$SNAP/etc/fonts/config.d
export FONTCONFIG_FILE=$SNAP/etc/fonts/fonts.conf

# mount is needed because jar tries to used hard coded path for
# /usr/bin/xprop
#export SUDO_ASKPASS=$SNAP/usr/lib/ssh/x11-ssh-askpass
#sudo -A mount --bind /usr/bin $SNAP/usr/bin
#sudo -A ln -s /usr/bin/xprop $SNAP/usr/bin/xprop


echo ls $SNAP/usr/ozvm
ls $SNAP/usr/ozvm
echo ls $SNAP/usr/ozvm/roms
ls $SNAP/usr/ozvm/roms

echo ls $SNAP_USER_DATA
ls

echo ls $SNAP/usr/bin
ls $SNAP/usr/bin

echo ls /usr/bin
ls /usr/bin

java -jar -Duser.home=$SNAP_USER_DATA $SNAP/usr/ozvm/z88.jar

#sudo -A umount $SNAP/usr/bin
