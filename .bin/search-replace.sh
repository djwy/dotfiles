#!/bin/bash

if [ -z "$2" ]; then
  echo "Usage: $0 [DIR (optional)] [FIND] [REPLACE]"
  exit 1
fi

if [ -z "$3" ]; then
  DIR="."
  FIND="$1"
  REPLACE="$2"
else
  DIR="$1"
  FIND="$2"
  REPLACE="$3"
fi

# Requires `brew install gnu-sed`
ag -l $DIR | grep -v \' | xargs gsed -b -i "s/${FIND}/${REPLACE}/g"
