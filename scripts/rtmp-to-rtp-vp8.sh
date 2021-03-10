#!/bin/sh
ffmpeg -re -i "rtmp://127.0.0.1:1935/live/Jfifg8PcX" \
  -c:a copy -acodec libopus -vn -f rtp rtp://127.0.0.1:5002 \
  -c:v copy -vcodec vp8 -an -f rtp rtp://127.0.0.1:5004
