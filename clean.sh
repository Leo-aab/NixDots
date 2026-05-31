#!/usr/bin/env bash




if [[ $EUID -ne 0 ]]; then
    echo "Script necessário ser executado como root"
    exit 1
fi

nix-store --optimise
nix-store --gc
nix-collect-garbage -d


: >  ~/.zsh_history && exec $SHELL -l

exit 1
