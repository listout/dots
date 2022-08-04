#!/usr/bin/env bash

# AMD specific system temperature
for i in /sys/class/hwmon/hwmon*/temp*_input; do
	if [ "$(<$(dirname $i)/name): $(cat ${i%_*}_label 2>/dev/null || echo $(basename ${i%_*}))" = "k10temp: Tctl" ]; then
		export HWMON_PATH="$i"
	fi
done

# Get wireless interface
export DEFAULT_NETWORK_INTERFACE=$(ip route | grep '^default' | awk '{print $5}' | head -n1)

# Kill all instances of polybar
killall -q polybar

log_file=/tmp/.polybar.err

#Launch Polybar on every monitor, using default config location ~/.config/polybar/config
for m in $(polybar --list-monitors | cut -d":" -f1); do
	# put a different bar on the laptop monitor (because it has a higher resolution)
	if [ "$m" = "eDP" ] || [ "$m" = "eDP-1" ]; then
		bar_type="laptop"
	else
		bar_type="external"
	fi
	MONITOR=$m polybar -r $bar_type 2>&1 | tee -a /tmp/.polybar.$m.err & disown
done

#polybar mybar 2>&1 | tee -a /tmp/polybar1.log & disown
#polybar mybar_external 2>&1 | tee -a /tmp/polybar_ext.log & disown
#echo "Bar launched"
