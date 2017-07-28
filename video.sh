#!/bin/bash

# Capture 30 seconds of raw video at 640x480 and 150kB/s bit rate into a pivideo.h264 file:
raspivid -t 10800000 -w 640 -h 480 -fps 25 -b 1200000 -p 0,0,640,480 -o /mnt/usbdisk/pe25.h264

# Wrap the raw video with an MP4 container: 
MP4Box -add /mnt/usbdisk/pe25.h264 /mnt/usbdisk/pe25.mp4

# Remove the source raw file, leaving the remaining pivideo.mp4 file to play
rm /mnt/usbdisk/pe25.h264

