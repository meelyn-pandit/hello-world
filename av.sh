#!/bin/bash

sudo sh /mnt/usbdisk/adaaudio2.sh &
sudo sh /mnt/usbdisk/video.sh &
sudo python /mnt/usbdisk/temp.py &
#sudo python /mnt/usbdisk/rfid3.py &

wait

