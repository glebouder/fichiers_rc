#!/bin/bash

ListeFile="$(find . -name ".*" -type f -prune)"
cd ../

for file in ${ListeFile}
do
  rm -f ${file:2}
  ln -s fichiers_rc/${file:2}
done
cd fichiers_rc/
