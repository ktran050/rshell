#!/bin/sh
cd ..
make
bin/rshell << EOF
ls
ls -a
cd ..
git status
mkdir
git remote -v
git log
echo Hello World
git add -A
git status
exit
EOF
