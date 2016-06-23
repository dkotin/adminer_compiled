git clone git://git.code.sf.net/p/adminer/git;
cd git;
git pull origin master;
php compile.php;
cd ..;
cp git/adminer-*.php adminer.php;
git add adminer.php;
git commit -m "fresh build";
git push origin master;