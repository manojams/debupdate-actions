#!/bin/sh

cd /opt
make debupdate_defconfig && make && make install
rm -rf /opt/*
