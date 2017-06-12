#!/bin/bash
cd ..

PACKAGE="keystore-explorer"
VERSION=`cat keystore-explorer/kse/MANIFEST.MF | grep Implementation-Version | awk '{print $2}' | tr -dc '[[:print:]]'`
REVISION=`cat debian/revision | perl -ne 'chomp; print join(".", splice(@{[split/\./,$_]}, 0, -1), map {++$_} pop @{[split/\./,$_]}), "\n";'`
CHANGES=`git log -n 1 | tail -n+5`
dch -b -v $VERSION-$REVISION --package $PACKAGE $CHANGES

debuild -i -us -uc -b

LASTVERSION=`cat debian/lastversion`
if [ $LASTVERSION == $VERSION  ];
then
    echo $REVISION > debian/revision
else
    echo 0 > debian/revision
    echo $VERSION > debian/lastversion
fi

rm -rf debian/$PACKAGE

cd ..
ls *.deb

#~/bin/publish-deb-packages.sh
