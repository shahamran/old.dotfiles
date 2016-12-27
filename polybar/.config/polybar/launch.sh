#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have benn shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch the bar[s]
polybar top &

echo "Bars launched..."

