.PHONY: init
init:
	./scripts/init.sh

.PHONY: check
check:
	SKIP_WASM_BUILD=1 cargo check --release

.PHONY: test
test:
	SKIP_WASM_BUILD=1 cargo test --release --all

.PHONY: run
run:
	 WASM_BUILD_TOOLCHAIN=nightly-2020-05-10 cargo run --release -- --dev --tmp

.PHONY: build
build:
	 WASM_BUILD_TOOLCHAIN=nightly-2020-05-10 cargo build --release
	 
