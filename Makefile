.PHONY cargo-build
cargo-build:
	cargo build

.PHONY build wasm-pack-build
wasm-pack-build:
	wasm-pack build --out-dir ../webgl-wasm-build

.PHONY wasm-pack-publish wasm-pack-publish
wasm-pack-publish:
	cd ../webgl-wasm-build
	wasm-pack publish

.PHONY build
build: cargo-build wasm-pack-build



