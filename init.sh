#!/bin/bash

for i in {0001..0008}
do
    ref=$(uuidgen)

    echo "- [[id:${ref}][${ref}]]"

    cat <<-EOM > "${i}.org"
:PROPERTIES:
:ID:     ${ref}
:END:
#+TITLE: ${ref} ~ ${i}.org

EOM

done > refs.txt

for f in *.org
do
    cat refs.txt >> "${f}"
done