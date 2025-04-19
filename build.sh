#!/bin/bash

odin build examples/basic_platformer -out:target/platformer -o:speed \
  -collection:vendor=vendor/raylib \
  -collection:engine=engine \
  -extra-linker-flags:"-Lvendor/raylib/linux -lraylib -lm -ldl -lpthread -lGL -lrt -lX11"
