@echo off
IF NOT EXIST bin mkdir bin
odin build main.odin -llvm-api -vet -out:"bin/main.exe"