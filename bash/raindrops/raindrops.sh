#!/usr/bin/env bash

main () {
  o=""
  (( $1 % 3 == 0 )) && o="${o}Pling"
  (( $1 % 5 == 0 )) && o="${o}Plang"
  (( $1 % 7 == 0 )) && o="${o}Plong"
  (( ${#o} == 0 )) && echo $1 || echo $o
}

main "$@"
