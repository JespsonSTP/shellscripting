#!/bin/bash

#verify superuser
if [ $UID != 0 ];
 then
        echo "You need to be a superuser"
        exit 1
fi

#update the repos
while [ $UID = 0 ];
 do
        apt -y update
        break
done

#prompt the user if they want to continue update
read -p " You are about to upgrade, would you like to proceed? " ans
           "
ans2=$(echo $ans | cut -c 1 | tr [:upper:] [:lower:] )

#If yes the system will upgrade

if [ $ans2 = "y" ];
 then
        apt -y upgrade
        exit 0
fi