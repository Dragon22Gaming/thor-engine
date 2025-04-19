#!/bin/bash

EXAMPLE=$1

if [ -z "$EXAMPLE" ]; then
  echo "Usage: ./build.sh <example-name>"
  exit 1
fi

odin build "./examples/"$EXAMPLE \
    -collection:thor=./thor \
    -o:speed -out:"target/"$EXAMPLE".bin" \
    -vet-style