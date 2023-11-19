#!/bin/bash
cd x86_64
#repo-add catRepo.db.tar.gz *.pkg.tar.zst
rm catRepo.db
rm catRepo.files
cp -f catRepo.db.tar.gz catRepo.db
cp -f catRepo.files.tar.gz catRepo.files
cd ..
git add x86_64
git commit -m "Repo update"
