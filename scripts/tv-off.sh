#!/bin/bash

gnome-monitor-config set \
  -LM HDMI-1 -m 1920x1080@60.000 -x 0 -y 0 -s 1 \
  -LpM DP-1 -m 1920x1080@75.002 -x 1920 -y 0 \
  -o HDMI-2
