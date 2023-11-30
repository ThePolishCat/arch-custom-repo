#!/bin/bash
mkdir down
cd down
repoctl down -o build-order.txt -u
    for pkg in $(cat build-order.txt); do
        (
            cd $pkg
            makepkg -sr --sign --config ../../makepkg.conf
            ok=$?
            if $ok; then
                REPOCTL_CONFIG=../../repoctl.conf repoctl add *.pkg.tar.zst
                cd ..
                rm -rf $pkg
            fi
        )
    done
cd ../../
bash updateRepo.sh
rm -fr down
