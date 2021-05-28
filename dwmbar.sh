while true; do
	echo $(/usr/src/dwmbar/modules/update) > ~/cache/dwmupdates.txt

	sleep 7200s
done &


while true; do
    UPT="  $(/usr/src/dwmbar/modules/upt)"
	VOL="$(/usr/src/dwmbar/modules/volume)"
	NET="$(/usr/src/dwmbar/modules/network)"
    CPU=$(/usr/src/dwmbar/modules/cpu)
	MEM="  $(/usr/src/dwmbar/modules/memory)"
	TEMP="  $(/usr/src/dwmbar/modules/temp)"
	UPDATES="  $(< ~/cache/dwmupdates.txt)"
	TIME="  $(/usr/src/dwmbar/modules/clock)"
    BATT=$(/usr/src/dwmbar/modules/battery)

    
	xsetroot -name "| $CPU | $MEM | $TEMP | $UPT | $UPDATES | $NET | $VOL | $BATT | $TIME"

	sleep 5s
	
done &
