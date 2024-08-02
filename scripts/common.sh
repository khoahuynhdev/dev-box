#! /usr/bin/env bash

set -euxo pipefail

sudo apt-get update -y
apt-get install -y software-properties-common curl apt-transport-https ca-certificates build-essential

# install neovim
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt-get update -y && sudo apt-get install -y neovim
