#!/bin/bash

nvidia-docker run -it --gpus all \
 --env="DISPLAY=$DISPLAY" \
 --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
 --volume="$HOME/.ssh:/home/user/.ssh:ro" \
 --name concert_description_w_sara_shield \
 manuelvogel12/concert_description:latest \
 x-terminal-emulator
