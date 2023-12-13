#!/bin/sh

apt-get remove --purge make build-essential git -y
apt-get autoremove -y
apt-get clean
