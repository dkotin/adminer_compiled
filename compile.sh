#!/bin/sh
git clone git://git.code.sf.net/p/adminer/git;
cd git
git pull origin master
php compile.php
version = "1"
echo "$version"
cd ..;
cp git/adminer-*.php adminer.php;
git add adminer.php;
message=`cat < git/adminer/include/version.inc.php | grep VERSION`
git commit -m "$message";
git push origin master;


