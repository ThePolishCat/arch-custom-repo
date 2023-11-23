#!/bin/bash
if [ $# -ne 1 ]; then
    echo "Need one package"
    exit 1
fi
mkdir down
cd down
repoctl down $1
cd $1
makepkg -sr --sign --config ../../makepkg.conf
REPOCTL_CONFIG=../../repoctl.conf repoctl add *.pkg.tar.zst
cd ../../
bash updateRepo.sh
rm -fr down
