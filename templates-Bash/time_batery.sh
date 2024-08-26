#!/bin/bash

# tiempo de duracion 1 hora = 3600 segundos
time_duration=3600

# time interval 2 minutos = 120 seguntos
delta_time=120

for ((i=0; i<=$time_duration; i=i+$delta_time));
    do
        variable_01=$i
        variable_02=$(cat /sys/class/power_supply/BAT0/capacity)
        echo    "$variable_01;;$variable_02"    >>  data.dat
        sleep   $delta_time
    done

