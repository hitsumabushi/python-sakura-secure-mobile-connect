#!/bin/sh

pip install -r requirements-dev.txt
cd docs/
git init

make clean
make html || exit 1

# git config
git config user.email "${GIT_USER_EMAIL}"
git config user.name "${GIT_USER_NAME}"

# checkout branch
git checkout -b gh-pages

# copy output to top of repository
mkdir .keep/
cp -r _build/html/* .keep/

# Remove unpublish files
rm -rf *
rm -f .gitignore

mv .keep/* . && rm -rf .keep

# Git push
git add -A .
git commit -m "Build by CI"
git push -fq "https://${GITHUB_TOKEN}@github.com/hitsumabushi/python-sakura-secure-mobile-connect.git" gh-pages:gh-pages > /dev/null 2>&1 # forced push
