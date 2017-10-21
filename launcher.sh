#!/usr/bin/env bash

export JAVA_HOME=$SNAP/usr/lib/jvm/java-8-openjdk-$SNAP_ARCH
export PATH=$JAVA_HOME/jre/bin:$SNAP/usr/bin/:$PATH

# Not good, needed for fontconfig
export XDG_DATA_HOME=$SNAP/usr/share
# Font Config
export FONTCONFIG_PATH=$SNAP/etc/fonts/config.d
export FONTCONFIG_FILE=$SNAP/etc/fonts/fonts.conf

java -jar -Duser.home=$SNAP_USER_DATA $SNAP/usr/ozvm/z88.jar
