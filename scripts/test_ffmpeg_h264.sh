#!/bin/sh
ffmpeg -re -stream_loop -1 -i /home/adore/source/janus-mock/videos/sample2.mp4 \
  -c:a copy -acodec libopus -vn -f rtp rtp://127.0.0.1:8002 \
  -s 640x360 -c:v libx264 -profile:v baseline -b:v 1M -r 24 -g 60 -an -f rtp rtp://127.0.0.1:8004



