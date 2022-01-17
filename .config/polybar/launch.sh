#!/usr/bin/env bash

for i in /sys/class/hwmon/hwmon*/temp*_input; do
	if [ "$(<$(dirname $i)/name): $(cat ${i%_*}_label 2>/dev/null || echo $(basename ${i%_*}))" = "k10temp: Tctl" ]; then
		export HWMON_PATH="$i"
	fi
done
killall -q polybar
echo "---" | tee -a /tmp/polybar1.log
polybar mybar 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Bar launched"
