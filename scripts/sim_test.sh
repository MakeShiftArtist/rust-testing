#!/bin/bash

# Run cargo fmt command
echo "Running cargo fmt..."
cargo fmt --all -- --check

# Run cargo check command
echo "Running cargo check..."
cargo check --all-features

# Run cargo clippy command
echo "Running cargo clippy..."
cargo clippy -- -D warnings

echo "Running cargo test..."
cargo tarpaulin --fail-under 95
