#!/bin/sh
# Build dist/acorn-dice-litm.zip (the folder Foundry installs).
set -e
cd "$(dirname "$0")"
rm -rf dist/acorn-dice-litm dist/acorn-dice-litm.zip
mkdir -p dist/acorn-dice-litm
cp -r module.json LICENSE README.md scripts dice lang dist/acorn-dice-litm/
(cd dist && zip -qr acorn-dice-litm.zip acorn-dice-litm && rm -rf acorn-dice-litm)
echo dist/acorn-dice-litm.zip
