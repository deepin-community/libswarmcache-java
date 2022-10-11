#!/bin/sh -e

DATE=$(echo $1|sed 's/^.*\+cvs//')
DIR=libswarmcache-java-$1.orig
TAR=../libswarmcache-java_$1.orig.tar.gz
CVSROOT=pserver:anonymous@swarmcache.cvs.sourceforge.net:/cvsroot/swarmcache

# checkout the sources and clean them up
cvs -z9 -d:$CVSROOT export -D $DATE -d $DIR swarmcache
GZIP=--best tar -c -z -f $TAR --exclude '*.jar' --exclude '*CVS*'  $DIR
rm -rf $DIR

# move to directory 'tarballs'
if [ -r .svn/deb-layout ]; then
  . .svn/deb-layout
  mv $TAR $origDir
  echo "moved $TAR to $origDir"
fi

exit 0
