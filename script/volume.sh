#!/bin/bash

VOLUME=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
if echo "$VOLUME" | grep -q "[MUTED]"; then
  read -r _ volume _ <<<"${VOLUME//[MUTED]/}"
  echo $(echo "scale=0; -$volume * 100 / 1" | bc)
else
  read -r _ volume _ <<<"${VOLUME}"
  echo $(echo "scale=0; $volume * 100 / 1" | bc)
fi
