#!/bin/bash

#
## A simple script to set CPU speed 

CPUMIN="/sys/devices/system/cpu/cpufreq/policy*/cpuinfo_min_freq"
CPUMAX="/sys/devices/system/cpu/cpufreq/policy*/cpuinfo_max_freq"
CSCALE="/sys/devices/system/cpu/cpufreq/policy*/scaling_max_freq"
GOVERN="/sys/devices/system/cpu/cpufreq/policy*/scaling_available_governors"
CURGOV="/sys/devices/system/cpu/cpufreq/policy*/scaling_governor"

read -e -p "$(printf "Set the maximum CPU frequency in MHz ($(cat $CPUMIN | awk '{for(i=1;i<=NF;i++){sum+=$i;num++}}END{print(sum/num)}' | sed 's/...$//g')-$(cat $CPUMAX | awk '{for(i=1;i<=NF;i++){sum+=$i;num++}}END{print(sum/num)}' | sed 's/...$//g')) - Currently \"$(cat $CSCALE | awk '{for(i=1;i<=NF;i++){sum+=$i;num++}}END{print(sum/num)}' | sed 's/...$//g')\": ")" SETMAXSCALE
printf "$SETMAXSCALE" | sed 's/$/000/g' | tee $CSCALE > /dev/null
read -e -p "$(printf "Set the CPU governor mode ($(cat $GOVERN | sed 's/.$//g' | sed 's/ /, /g' | sort -u | sed 's/schedutil/default/g' | sed 's/powersav/powersave/g')) - Currently \"$(cat $CURGOV | sort -u | sed 's/schedutil/default/g')\": ")" GOVSEL
printf "$GOVSEL" | sed 's/default/schedutil/g' | tee $CURGOV > /dev/null
