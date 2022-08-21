@echo off
IF NOT EXIST bin mkdir bin
odin build ./ -target:js_wasm32 -out:bin/odin-wasm.wasm -vet -opt:2 -show-timings