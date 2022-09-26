#!/bin/sh -l

if [ -d "/github" ];then
    sudo chown -R build /github/workspace /github/home
fi

REPO_NAME="atolycs"
REPO_URL="https://repo.atolycs.net/x86_64"
POOL="x86_64"
sudo pacman -Sy
repo-add ${REPO_URL}/${REPO_NAME}.db.tar.gz ${POOL}/*.pkg.tar.zst


echo "================"
echo "Package created:"
echo `ls *.pkg.tar.zst`
echo "================"
