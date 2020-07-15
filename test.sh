#!/bin/bash
ocamlopt -I +zarith -safe-string unix.cmxa str.cmxa fsd3Tempo.ml -o fsd3.out 
echo "#####COMPILED########\n"

while mapfile -t -n 2 ary && ((${#ary[@]})); do

    printf '%s\n' "${ary[@]}" | ./fsd3.out

    printf -- '------'
done < tests.txt 
