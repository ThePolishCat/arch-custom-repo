#!/bin/bash
cd x86_64
repo-add catRepo.db.tar.gz *.pkg.tar.zst
rm catRepo.db
rm catRepo.files
#rm catRepo.db.sig
#rm catRepo.files.sig
cp catRepo.db.tar.gz catRepo.db
cp catRepo.files.tar.gz catRepo.files
#cp catRepo.db.tar.gz.sig catRepo.db.sig
#cp catRepo.files.tar.gz.sig catRepo.files.sig
cd ..
git add x86_64
git commit -m "Repo update"
