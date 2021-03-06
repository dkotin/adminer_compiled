#!/bin/sh
path=`dirname "$0"`
cd "$path"
git clone git://git.code.sf.net/p/adminer/git
cd git
git pull origin master
rm -f adminer-*.php
php compile.php
version = "1"
echo "$version"
cd ..;
cp git/adminer-*.php adminer.php;
git add adminer.php;
version=`cat < git/adminer/include/version.inc.php | grep VERSION`
echo "$version compiled"
date=`date +'%Y-%m-%d %H:%M'`
message="$date $version"
git commit -m "$message"
git push origin master