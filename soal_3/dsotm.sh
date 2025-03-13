#!/bin/bash

param="${1#--play=}"
  echo "$param"
    if [[ "$param" == "Speak To Me" ]]; then
      clear&&curl -s https://raw.githubusercontent.com/annthurium/affirmations/refs/heads/main/affirmations.js | sed -n 's/.*"\([^"]*\)".*/\1/p' |
    while IFS= read -r line; do
        echo "$line"
    sleep 1
	  done


 elif [[ "$param" == "On the Run" ]]; then
	width=40
        progress=0
    	clear&&echo "Ready, set, go!"
 while [ $progress -lt $width ]; do
	sleep $(awk -v min=0.1 -v max=1 'BEGIN{srand(); print min+rand()*(max-min)}')

	progress=$((progress + 2))


	if [ $progress -gt $width ]; then
		progress=$width
		fi

		percent=$((progress * 100 / width))

	printf "\r[%-*s] %d%%" "$width" "$(printf '#%.0s' $(seq 1 $progress))" "$percent"

 	done
	echo -e "\nDone"
 elif [[ "$param" == "Time" ]]; then
	while true; do
	clear  # Clear terminal
	date "+%Y-%m-%d %H:%M:%S"  # Show only date and time
	sleep 1  # Update every second
	done

 elif [[ "$param" == "money" ]]; then

	symbols=("💲" "€" "£" "¥" "¢" "₹" "₩" "₿" "₣" "₦" "₽")

	rows=$(tput lines)
	cols=$(tput cols)

	while true; do
		clear

		for ((i=0; i<rows; i++)); do
			line=""
			for ((j=0; j<cols; j+=2)); do
				rand_index=$((RANDOM % ${#symbols[@]}))
				line+="${symbols[$rand_index]} "
		done
			echo -e "$line"
		done

		sleep 0.1
	done


  elif [[ "$param" == "Brain Damage" ]]; then
	get_process_info() {
	    echo -e "USER\t\tPID\t%CPU\t%MEM\tVSZ\tRSS\tTTY\tSTAT\tSTART\tTIME\tCOMMAND"
         		echo "-------------------------------------------------------------------------------------------------"

    for pid in /proc/[0-9]*; do
        pid=${pid##*/}

        if [[ -f "/proc/$pid/stat" ]]; then

            user=$(stat -c '%U' /proc/$pid 2>/dev/null)

            read -r _ _ _ _ pgrp session tty_nr _ flags _ _ _ _ utime stime _ _ starttime _ vsize rss _ _ _ _ _ _ _ _ _ _ _ state < "/proc/$pid/stat"

            total_time=$((utime + stime))
            uptime=$(awk '{print $1}' /proc/uptime)
            hertz=$(getconf CLK_TCK)
            seconds=$(awk -v start="$starttime" -v up="$uptime" -v hz="$hertz" 'BEGIN { print up - (start / hz) }')

         if (( $(echo "$seconds > 0" | bc -l) )); then
                cpu_usage=$(awk -v total="$total_time" -v hz="$hertz" -v sec="$seconds" 'BEGIN { print (total / hz / sec) * 100 }')
            else
                cpu_usage=0
            fi

            rss=$(awk '{print $2}' /proc/$pid/statm)
            mem_total=$(awk '/MemTotal/ {print $2}' /proc/meminfo)
            mem_usage=$(awk -v rss="$rss" -v total="$mem_total" 'BEGIN { print (rss * 100) / total }')

            tty=$(ls -l /proc/$pid/fd 2>/dev/null | awk '/\/dev\/tty/ {print $NF; exit}')
            tty=${tty:-"?"}

            case "$state" in
                R) stat="R" ;; # Running
                S) stat="S" ;; # Sleeping
                D) stat="D" ;; # Disk sleep
                Z) stat="Z" ;; # Zombie
                T) stat="T" ;; # Stopped
                *) stat="?" ;;
            esac

            start_time=$(date -d "@$(awk -v start="$starttime" -v hz="$hertz" 'BEGIN { print int(start / hz) }')" +"%H:%M")

            time_elapsed=$(awk -v total="$total_time" -v hz="$hertz" 'BEGIN { print total / hz }')

            command=$(tr -d '\0' < /proc/$pid/cmdline 2>/dev/null)
            command=${command:-"[$(cat /proc/$pid/comm 2>/dev/null)]"}

	   printf "%-10s %-6s %-5.1f %-5.1f %-8s %-6s %-8s %-4s %-6s %-6.2f %s\n" "$user" "$pid" "$cpu_usage" "$mem_usage" "$vsize" "$rss" "$tty" "$stat" "$start_time" "$time_elapsed" "$command"
        	fi
    done | sort -k3 -nr | head -n 15  
	}


	while true; do
    		clear
    		echo "Brain Damage - Task Manager"
   		echo "============================"
    		get_process_info
    		sleep 1
	done
	else
	echo "Invalid Param"
	fi
