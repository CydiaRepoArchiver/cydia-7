git fetch origin gh-pages
git merge FETCH_HEAD

./remove.sh

dpkg-scanpackages -m . /dev/null > Packages
bzip2 -k Packages

git add --all
git commit -m "$1"
git push origin gh-pages