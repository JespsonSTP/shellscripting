#!/bin/bash

#Hello user!! This script will automatically create users

#You need to be a superuser to run the script!!
if [ $UID != 0 ];
 then
        echo "You need to be a superuser"
        exit 1
fi
#getting information to create to account such as name passwd, and group
read -p "What is your first name": firstname
read -p "What is your Last Name": lastname
read -p "What is your preferred shell": shell
read -p "What is your group": group
read -s -p "create a passwrd": passwd

#creating username
firstletter=${firstname:0:1}
username=$firstletter$lastname

echo $username

#command to create user 

useradd -c "${firstname $lastname}" -G ${group} -m -s ${shell} ${username}
echo ${passwd} | passwd --stdin ${username}



exit 0
