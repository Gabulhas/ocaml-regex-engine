#!/bin/bash
ocamlopt -I +zarith -safe-string unix.cmxa str.cmxa fsd3.ml -o fsd3.out 
echo "#####COMPILED########\n"

while mapfile -t -n 3 ary && ((${#ary[@]})); do

    printf -- '-----------------------------------------------------------\n'
    printf 'Expected: %s - Got ' "${ary[2]}"
    printf '%s\n%s' "${ary[0]}" "${ary[1]}" | ./fsd3.out
done < tests.txt 
