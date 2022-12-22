#!/usr/bin/env just --justfile

# List all commands
default:
    @just --list --unsorted

# Run the program
run DAY ARGS:
    deno run --import-map=import_map.json "src/{{DAY}}/main.ts" {{ARGS}}

# Run the program and watch for file changes
develop DAY ARGS:
    deno run --watch --import-map=import_map.json "src/{{DAY}}/main.ts" {{ARGS}}

# Run the tests
test:
    deno test

# Run the benchmarks
bench:
    deno bench
