#!/bin/sh

cd /opt
make $1_defconfig && make && make install
rm -rf /opt/*
