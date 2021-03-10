#!/bin/sh
ffmpeg -re -i "rtmp://127.0.0.1:1935/live/Jfifg8PcX" \
  -c:a copy -acodec libopus -vn -f rtp rtp://127.0.0.1:8002 \
  -c:v libx264 -s 640x360 -profile:v baseline -b:v 1M -r 24 -g 60 -an -f rtp rtp://127.0.0.1:8004
