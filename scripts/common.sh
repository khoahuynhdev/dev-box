#! /usr/bin/env bash


set -euxo pipefail

sudo apt-get update -y
apt-get install -y software-properties-common curl apt-transport-https ca-certificates vim
