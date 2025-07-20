#!/bin/bash
commit_variable=$(date)
echo $commit_variable
git add .
git commit -m "$commit_variable"
git push
