#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    echo "Script necessário ser executado como root"
    exit 1
fi

nix-store --optimise
nix-collect-garbage -d
