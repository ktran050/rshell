#!/bin/sh
cd ..
make
bin/rshell << EOF
echo echo# echo
echo ec#ho echo
ls #-a
#mkdir rick
git status
git branch #new
git branch new#
EOF
