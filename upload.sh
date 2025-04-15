#!/bin/bash
git add .
git commit -m "${1:-Update content}"
git push origin main

