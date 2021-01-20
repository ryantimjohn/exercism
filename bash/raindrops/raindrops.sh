#!/usr/bin/env bash

main () {
  o=""
  (( $1 % 3 == 0 )) && o+="Pling"
  (( $1 % 5 == 0 )) && o+="Plang"
  (( $1 % 7 == 0 )) && o+="Plong"
  [[ -z "$o" ]] && echo "$1" || echo "$o"
}

main "$@"
