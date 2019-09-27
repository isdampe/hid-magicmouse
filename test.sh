#!/bin/bash
make clean
make
sudo rmmod hid-magicmouse
sudo insmod hid-magicmouse.ko scroll-speed=20 emulate-3button=N
