#! /bin/bash

#$0 - This is the name of current script
#$1 - The first input parameter (user.name)
#$2 - The second input parameter (user.group)

#Create the user $1 with home directory
sudo useradd -m $1


echo "Look, that the user $1 is created"
echo "----------------------------------------------------------------------------------"
sudo cat /etc/passwd | grep /home/$1
echo "----------------------------------------------------------------------------------"

echo "Create new group"
sudo groupadd $2

echo "Look at current groups:"
echo "----------------------------------------------------------------------------------"
sudo cat /etc/group | grep $2
echo "----------------------------------------------------------------------------------"

echo "Add user $1 to group $2"
sudo usermod -aG $2 $1
echo " "
echo " "

echo "Look at user $1"
id $1
echo " "
echo " "

#echo "Delete group $2 and user $1"
#sudo deluser $1 $2
#sudo groupdel $2
#sudo userdel -r $1
#echo " "
#echo " "

#echo "Look at users"
#echo "---------------------------------------------------------------------------------"
#sudo cat /etc/passwd | grep /home/$1
#echo "---------------------------------------------------------------------------------"




