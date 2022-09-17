#!/bin/bash

echo "Escribe el nombre del video: "

read filename

ffmpeg -i video.mp4 -c copy -map 0 -segment_time 00:00:30 -start_number 1 -f segment -reset_timestamps 1 ${filename}%02d.mp4
