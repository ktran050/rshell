#!/bin/sh
cd ..
make
bin/rshell << EOF
ls; ls -a && mkdir woot|| echo echo &&rm woot
mkdir ello && cd ello; mkdir concurr || mkdir yes; rm concurr
mkdir oNo; mkdir yes && cd yes; git init; cd ..; git init && git add
git init; touch main.cpp || touch gorilla.cpp && git add -A; git commit -m "first commit"
exit
EOF
