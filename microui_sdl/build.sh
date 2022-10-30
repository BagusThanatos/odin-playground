mkdir -p bin/
odin build main.odin -file -vet -opt:2 -show-timings -out:"bin/main"
