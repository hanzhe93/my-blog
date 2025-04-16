#!/bin/bash

git add .
git commit -m "${1:-Update content}"

# try first git push
if ! git push origin main; then
  echo "Initial push failed. Attempting to rebase with 'origin/dev'..."
  git pull --rebase origin main

  # retry git push
  git push origin main
fi

