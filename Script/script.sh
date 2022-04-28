# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    script.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mfusil <mfusil@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/28 14:32:44 by mfusil            #+#    #+#              #
#    Updated: 2022/04/28 15:41:27 by mfusil           ###   ########.fr        #
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
sleep 1
printf ". "
sleep 1
printf ". "
sleep 1
printf ".\n\n"
printf "             \e[1;31m    ["
sleep 1
while [ $i -le 4 ]
do
    printf "\e[1;31m■■■■■"
    sleep 1
let i=$i+1
done
echo "]\n"
}
#Update
timer
sleep 1
echo "                 [\031Autodestruction terminée]\n\n\n"