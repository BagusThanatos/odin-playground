mkdir -p bin/
~/personal/Odin/odin build main.odin -target:js_wasm32 -out:bin/odin-wasm.wasm -vet -opt:2 -show-timings