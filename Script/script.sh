# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    script.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mfusil <mfusil@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/28 14:32:44 by mfusil            #+#    #+#              #
#    Updated: 2022/05/25 17:18:04 by mfusil           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash


echo "
  _        _____   ____    ______   _______     _  _     ___   \n\
 | |      |_   _| |  _ \  |  ____| |__   __|   | || |   |__ \  \n\
 | |        | |   | |_) | | |__       | |      | || |_     ) | \n\
 | |        | |   |  _ <  |  __|      | |      |__   _|   / /  \n\
 | |____   _| |_  | |_) | | |         | |         | |    / /_  \n\
 |______| |_____| |____/  |_|         |_|         |_|   |____| \n\n"

sleep 1
function timer
{
i=0
printf "\n         \e[1;31m        AUTODESTRUCTION EN COURS"
sleep 0,1
printf ". "
sleep 0,5
printf ". "
sleep 0,5
printf ".\n\n"
printf "             \e[1;31m    ["
sleep 0,5
while [ $i -le 4 ]
do
    printf "\e[1;31m■■■■■"
    sleep 0,5
let i=$i+1
done
echo "]\n"
}
#Update
timer
sleep 0,5
echo "                 [\031Autodestruction terminée]\n\n\n"