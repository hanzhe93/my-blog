#!/bin/bash

git add .
git commit -m "${1:-Update content}"

# 尝试第一次 push
if ! git push origin main; then
  echo "Initial push failed. Attempting to rebase with 'origin/dev'..."
  git pull --rebase origin main

  # 再次尝试 push
  git push origin main
fi

