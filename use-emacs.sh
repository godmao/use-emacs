#!/bin/bash

yum install -y emacs

TAR_EMACS_D=emacs.d.tar.gz
TAR_MYELPA=myelpa.tar.gz
POS_EMACS_D=~/.emacs.d
POS_MYELPA=~/myelpa

wget https://github.com/godmao/emacs.d/archive/emacs24.3.tar.gz -O $TAR_EMACS_D
wget https://github.com/godmao/myelpa/archive/emacs24.3.tar.gz -O $TAR_MYELPA

if [ -d $POS_EMACS_D ]; then
    mv $POS_EMACS_D ${POS_EMACS_D}_bak
fi

mkdir $POS_EMACS_D
mkdir $POS_MYELPA

tar zxf $TAR_EMACS_D -C $POS_EMACS_D --strip-components=1
tar zxf $TAR_MYELPA -C $POS_MYELPA --strip-components=1

rm -f $TAR_EMACS_D
rm -f $TAR_MYELPA
