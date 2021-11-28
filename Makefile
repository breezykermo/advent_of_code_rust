.PHONY: run
SHELL := /bin/bash

today: src/template.rs
	source .env
	rm -f src/today.rs
	cp src/template.rs src/today.rs

save:
	source .env
	rm -r src/${YEAR}/${DAY}.rs
	cp src/today.rs src/${YEAR}/${DAY}.rs

run:
	source .env && cargo run | bat
