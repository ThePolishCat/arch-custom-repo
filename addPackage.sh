#!/bin/bash
if [ $# -ne 1 ]; then
    echo "Need one package"
    exit 1
fi
url="https://aur.archlinux.org/packages/$1"
if curl -s --head  --request GET "$url" | grep "404" > /dev/null 
	then 
	echo "Package not found"
	exit 0 
fi   
mkdir down
cd down
repoctl down $1

if [ ! -d "$1" ]; then
    exit 0
fi


cd $1
makepkg -sr --sign --config ../../makepkg.conf
REPOCTL_CONFIG=../../repoctl.conf repoctl add *.pkg.tar.zst
cd ../../
bash updateRepo.sh
rm -fr down
