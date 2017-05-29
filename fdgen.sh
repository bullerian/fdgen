#!/bin/bash -ex

# Default values

LEVELS=10
FILESCOUNT=10
PTH='.'
TREE='NO'
FILEEXT='.tmp'
FNAME='file'
DNAME='dir'

while [[ $# -gt 1 ]]; do
  key="$1"

  case $key in
      -l) LEVELS="$2"
          shift
          ;;
      -n) FILESCOUNT="$2"
          shift
          ;;
      -p) PTH="$2"
          shift
          ;;
      -t) TREE=YES
          ;;
      -e) FILEEXT="$2"
          shift
          ;;
      -f) FNAME="$2"
          shift
          ;;
      -d) DNAME="$2"
          shift
          ;;
      *)  echo "Unknown command $2" >&2
          exit 1
          ;;
  esac
  shift
done
