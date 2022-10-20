#!/bin/bash

# |SMART STOP v0.7|
# Developed by: https://github.com/ZumoOfZumos
# This program lets the user close WSL by just typing 'smart-stop' in the Linux Terminal
# If needed or wanted there are several options that can be modified with parameters so that the programs suits your needs
# For more info please visit: https://github.com/ZumoOfZumos/SmartStop


# OPTIONS:
# Checks if user wants to turn on/off the Windows Terminal option
if [[ $1 == '-t' ]] || [[ $1 == '-T' ]]; then
    # Checks if is true
    if [[ $2 == "true" ]]; then
        # Modifyes the config file with the user preference
        sudo sed -i "s/WINTERMINAL=.*/WINTERMINAL=$2/g" /etc/Smart\ Stop/smart-stop.conf
        echo "The terminal will be closed when Smart Stop is used."
    # Checks if is false
    elif [[ $2 == "false" ]]; then
        # Modifyes the config file with the user preference
        sudo sed -i "s/WINTERMINAL=.*/WINTERMINAL=$2/g" /etc/Smart\ Stop/smart-stop.conf
        echo "The terminal will not be closed when Smart Stop is used."
    # If lacks option reminds the user of the usage
    else
        echo "Please enter 'true' or 'false' after the '-t' parameter."
    fi
# Checks if user wants to change the DISTRO
elif [[ $1 == '-d' ]] || [[ $1 == '-D' ]]; then
    # Checks if user inputted a preference
    if [ ! -z $2 ]; then
        # Modifyes the config file with the user preference
        sudo sed -i "s/DISTRO=.*/DISTRO=$2/g" /etc/Smart\ Stop/smart-stop.conf
        echo "Distro has been changed to $2"
    # If lacks option reminds the user of the usage
    else
        echo "Please enter a distro process name after '-d' parameter."
    fi
# Checks if user wants to change the IDE
elif [[ $1 == '-i' ]] || [[ $1 == '-I' ]]; then
    # Checks if user inputted a preference
    if [ ! -z $2 ]; then
        # Modifyes the config file with the user preference
        sudo sed -i "s/EDITOR=.*/EDITOR=$2/g" /etc/Smart\ Stop/smart-stop.conf
        echo "IDE has been changed to $2 "
    # If lacks option reminds the user of the usage
    else
        echo "Please enter an IDE process name after '-d' parameter."
    fi
# Checks if the user is using the parameter to get help
elif [[ $1 == '-?' ]] || [[ $1 == "--help" ]]; then
    echo | echo; cat /etc/Smart\ Stop/help.txt; echo; echo
# Checks version of the program
elif [[ $1 == "--version" ]]; then
    echo 
    echo "Smart Stop V1.0"
    echo 
    echo "MIT License"
    echo 
    echo "Copyright (c) 2022 ZumoOfZumos"
    echo
# Uninstalls the program
elif [[ $1 == "--uninstall" ]]; then
    echo "Uninstalling Smart Stop..."
    sudo rm -rf /usr/bin/smart-stop
    sudo dpkg -P smart-stop
# Checks if user's input is a supported paramenter
elif [ ! -z $1 ]; then
    echo "ERROR: Parameter not accepted"
    echo "To change the settings try using the available parameters"
    echo "that you can check with '-?' or '--help'."
# If the code has no parameter runs the Powershell Script to close WSL
else
    # Promt the user with a message and runs shutdown.ps1 script
    echo "Turning Off"
    sleep 0.4

    # Runs Powershell Script to close WSL
    cd /usr/local/Smart\ Stop/
    powershell.exe -f shutdown.ps1; exit
fi
