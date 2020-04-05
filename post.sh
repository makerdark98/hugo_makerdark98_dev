#!/usr/bin/zsh
if [ $# -gt 0 ]
then
  hugo -D
  cd public
  git add *
  git commit -m "$1"
  git push origin master
  cd ..
  git add *
  git commit -m "$1"
  git push origin master
else
  echo "input commit message"
fi
