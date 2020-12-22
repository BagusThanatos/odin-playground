@echo off
IF NOT EXIST bin mkdir bin
odin build main.odin -llvm-api -vet -opt:2 -show-timings -out:"bin/main.exe"
