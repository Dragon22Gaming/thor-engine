#!/bin/bash

EXAMPLE=$1

if [ -z "$EXAMPLE" ]; then
  echo "Usage: ./build_example.sh <example-name>"
  exit 1
fi

echo "Building example: $EXAMPLE"
echo "odin build ./examples/$EXAMPLE -collection:thor=./thor -o:speed -out:target/$EXAMPLE.bin -vet-style"

odin build ./examples/$EXAMPLE -collection:thor=./thor -o:speed -out:target/$EXAMPLE.bin -vet-style
