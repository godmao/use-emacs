#!/bin/bash

TAR_EMACS_D="emacs.d.tar.gz"
TAR_MYELPA="myelpa.tar.gz"
POS_EMACS_D="~/.emacs.d"
POS_MYELPA="~/myelpa"

wget https://github.com/godmao/emacs.d/archive/emacs24.3.tar.gz -O $TAR_EMACS_D
wget https://github.com/godmao/myelpa/archive/emacs24.3.tar.gz -O $TAR_MYELPA

mv ~/.emacs.d ~/.emacs.d_bak
mkdir $POS_EMACS_D
mkdir $POS_MYELPA

tar zxvf $TAR_EMACS_D -C $POS_EMACS_D --strip-components=1
tar zxvf $TAR_MYELPA -C $POS_MYELPA --strip-components=1

