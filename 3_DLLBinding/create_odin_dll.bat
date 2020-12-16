IF NOT EXIST bin/ mkdir bin
odin build divide.odin -vet -opt:2 -show-timings -build-mode=dll -out="bin/divide.dll"
