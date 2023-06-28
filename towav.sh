#!/bin/bash

source venv/bin/activate
spotdl $1
mv *.mp3 input.mp3
ffmpeg -i input.mp3 -acodec pcm_s16le -ar 32000 -ac 1 XXsong.wav
rm input.mp3
