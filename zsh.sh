#!/usr/bin/env bash

apt-get update \
    && apt-get install zsh -y \
    && chsh -s $(which zsh) $(whoami) \
    && zsh --version
