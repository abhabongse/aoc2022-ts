#!/usr/bin/env just --justfile

# List all commands
default:
    @just --list --unsorted

# Run the program
run DAY ARGS:
    deno run --check --import-map=import_map.json "src/{{DAY}}/main.ts" {{ARGS}}

# Run the program and watch for file changes
develop DAY ARGS:
    deno run --watch --import-map=import_map.json "src/{{DAY}}/main.ts" {{ARGS}}

cache:
    deno cache --import-map=import_map.json src/**/*.ts

# Run the tests
test:
    deno test

# Run the benchmarks
bench:
    deno bench

# Check code quality
check:
    deno check src/**/*.ts && deno lint

# Run code formatter
fmt:
    deno fmt
