#!/usr/bin/env bash

main () {
  o=""
  if (( $1 % 3 == 0 )); then
    o="${o}Pling"
  fi
  if (( $1 % 5 == 0 )); then
    o="${o}Plang"
  fi
  if (( $1 % 7 == 0 )); then
    o="${o}Plong"
  fi
  if (( ${#o} == 0 )); then
    echo $1
  else
    echo $o
  fi
}

main "$@"
