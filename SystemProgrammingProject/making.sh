#! /bin/bash
sudo rmmod water_dev
sudo rmmod temp2_dev
sudo rmmod temp_dev
sudo rmmod dust_dev
sudo rmmod lcd_dev
sudo rmmod pwm_dev
sudo rmmod button_dev
sudo rmmod send_dev
make clean
make
sudo insmod water_dev.ko
sudo insmod temp_dev.ko
sudo insmod temp2_dev.ko
sudo insmod dust_dev.ko
sudo insmod lcd_dev.ko
sudo insmod pwm_dev.ko
sudo insmod button_dev.ko
sudo insmod send_dev.ko
gcc -o a detect_app.c -lpthread
