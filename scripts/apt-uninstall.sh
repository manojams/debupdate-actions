#!/bin/sh

apt-get remove --purge make build-essential libmtd-dev liblua5.4-dev libubi-dev libubootenv-dev libubootenv-tool libfdisk-dev dh-lua git -y
apt-get autoremove -y
apt-get clean
