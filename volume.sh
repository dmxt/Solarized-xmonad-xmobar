#!/bin/bash

mixer=$(amixer get Master | grep 'Mono:')
#echo $mixer | cut -d ' ' -f 4
#echo $mixer | cut -d ' ' -f 6

muted=$(amixer get Master | grep 'Mono:' | cut -d ' ' -f 8)
if [ "$muted" == "[off]" ]; then
	echo "[--]"
	else
	echo $mixer | cut -d ' ' -f 4
fi

