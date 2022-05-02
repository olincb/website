#!/bin/bash
echo $1
if [[ `git status --porcelain -C $1` ]]; then
  echo "Changes"
else
  echo "no changes"
fi