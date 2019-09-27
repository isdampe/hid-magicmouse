# Apple Magic Mouse for Linux patched driver

This repository contains very slight modifications on the `hid-magicmouse.c` 
Apple Magic Mouse driver for Linux. 

Specifically, it makes the scroll wheel emulation easier to use and closer 
to that of macOS. The unmodified driver (as of kernel 5.x) makes the scroll
wheel emulation very sensitive when the scroll speed is set fast. 

These modifications to the driver make the initial action sensitivity _low_ but
the scroll speed itself _fast_.

## How to use

```bash
make
sudo rmmod hid-magicmouse
sudo insmod hid-magicmouse.ko scroll-speed=20 emulate-3button=n
```
