#!/usr/bin/env bash

export LUA_PATH=./witchesbrew/init.lua
nvim --headless +Shipwright +qa
echo "witchesbrew build complete - generated variants: witchesbrew, witchesbrew-bright"
