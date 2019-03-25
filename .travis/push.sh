#!/bin/sh

setup_git() {
  git config --global user.email "blademainer@gmail.com"
  git config --global user.name "blademainer"
}

commit_website_files() {
  git checkout -b gh-pages
  git add ./ -A
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote add origin-pages https://${GH_TOKEN}@github.com/blademainer/sync-cloud-docs.git > /dev/null 2>&1
  git push --quiet --set-upstream origin-pages gh-pages -f
}

setup_git
commit_website_files
upload_files