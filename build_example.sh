#!/bin/bash

EXAMPLE=$1
RUN=$2

if [ -z "$EXAMPLE" ]; then
  echo "Usage: ./build_example.sh <example-name> -flags

  flags:
  -r : runs the binary after generation
  "

  exit 1
fi

echo "Building example: $EXAMPLE"
echo "odin build ./examples/$EXAMPLE -collection:thor=./thor -o:speed -out:target/$EXAMPLE.bin -vet-style"
odin build ./examples/$EXAMPLE -collection:thor=./thor -o:speed -out:target/$EXAMPLE/$EXAMPLE.bin -vet-style

if [ $RUN == "-r" ]; then
  echo "running binary:"

  "./target/$EXAMPLE/$EXAMPLE.bin"
fi