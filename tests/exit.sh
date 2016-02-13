#!/bin/sh
cd ..
make
bin/rshell << EOF
ls ; exit
mkdir rawr && exit
exit || ls
git status && exit
git status ; exit
EOF
