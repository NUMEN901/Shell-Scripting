#!/bin/bash

#installsoftware.sh is a Bash script designed to automate the installation of software packages on Linux systems using 
#the yum package manager. It checks whether the specified software is already installed and 
#installs it if necessary, ensuring efficient package management.

if [[ $# -eq 0 ]] ;
then
        echo "Usage: Please provide software names as cammand line atguments"
        exit 1
fi

if [[ $(id -u) -ne 0 ]];
then
        echo "Please run from root user or with sudo privilage"
        exit 2
fi

for software in $@
do
        if which $softwares &> /dev/null
        then
                echo " Already $software is installed"
        else
                echo "Installing $softwares ....."
                yum install $software  -y &> /dev/null
                if [[ $? -eq 0 ]]
                then
                        echo "Successfully installed $software packages"
                else
                        echo "Unable to install $softwares"
                fi
        fi
done"
