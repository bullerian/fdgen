#!/bin/bash -e

# -e is to exit on first error

######## Default values
LEVELS=10
FCOUNT=10
PTH=$(pwd)
FEXT='tmp'
FNAME='file'
DNAME='dir'
########

# Exit with non-zero status if passed parameter is not integer
# greater than zero
function isInt() {
  local target=$1

  if ! [ "$target" -eq "$target" -a "$target" -gt 0 ] 2> /dev/null
  then
      echo "$target is not valid integer value" >&2
      exit 1
  fi
}

# Process script's commands
while [[ $# -gt 1 ]]; do
  key="$1"
  case $key in
      -l) LEVELS="$2"
          isInt $LEVELS
          shift
          ;;
      -n) FCOUNT="$2"
          isInt $FCOUNT
          shift
          ;;
      -p) PTH="$2"
          # Check if PTH is valid path to directory
          if [ ! -d "$PTH" ]; then
            echo "$PTH is not a valid path" >&2
            exit 1
          fi
          shift
          ;;
      -e) FEXT="$2"
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

# Main logic
dirCnt=0
fileCount=0
foldersPath=''

while [ $dirCnt -lt $LEVELS ]; do
  foldersPath+="/$DNAME$((++dirCnt))"
  mkdir "$PTH$foldersPath"

  while [ $fileCount -lt $FCOUNT ]; do
    touch "$PTH$foldersPath/$FNAME$((++fileCount)).$FEXT"
  done
  fileCount=0
done
