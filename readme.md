# Org-roam Test Files

Use this script to generate lots of interlinked `.org` files:

```sh
#!/bin/bash

for i in {0001..0008}               # create N org files & links
do
    ref=$(uuidgen)                  # org uses uuid for node ids

    echo "- [[id:${ref}][${ref}]]"  # echo for subsequent concat

    cat <<-EOM > "${i}.org"
:PROPERTIES:
:ID:     ${ref}
:END:
#+TITLE: ${ref} ~ ${i}.org

EOM                                 # simulate org-id-get-create

done > refs.txt                     # save for subsequent concat

for f in *.org
do
    cat refs.txt >> "${f}"          # link all refs in each file
done
```

You can use them to harvest the heat and steam from Org-Roam, for your winter warmth on the fastest locomotive.

Alternatively, you can use them for benchmarking!
