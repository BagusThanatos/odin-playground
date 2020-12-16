@echo off
odin build main.odin -llvm-api -vet -opt:2 -show-timings
