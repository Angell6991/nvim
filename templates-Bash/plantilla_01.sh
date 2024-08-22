#!/bin/bash

####################################
##---------define_variable--------##
####################################

variable=2
echo    $variable

##-----variable_in_terminal-------##

read    var_01
echo    $var_01

####################################
##--------define_ciclo_for--------##
####################################

for i in {1..8}
    do 
        echo    hola mundo $i
    done

##------ciclo_for_one_line--------##

for i in {1..8}; do echo    hola mundo $i ;done

##-------ciclo_for_C-style--------##

for ((i=1; i<=5; i=i+2)) 
    do
        echo "$i"
    done


