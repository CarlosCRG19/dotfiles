#!/usr/bin/env bash

polybar-msg cmd quit

echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar example >> /tmp/polybar1.log 2>&1 &

echo "Bars launched..."
