#!/bin/bash

# |SMART STOP v0.2|
# Developed by: https://github.com/ZumoDeZumos
# This program lets the user close WSL with just a simple 'stop' in the Linux Terminal
# If needed or wanted there are several options that can be modified with parameters so that the programs suits your needs
# For more info please visit: https://github.com/ZumoDeZumos/SmartStop

# OPTIONS:
# Checks if user wants to turn on/off the Windows Terminal option
if [[ $1 == '-t' ]] || [[ $1 == '-T' ]]; then 
    # Checks if is true
    if [[ $2 == "true" ]]; then 
        # Modifyes the config file with the user preference
        sed -i "s/WINTERMINAL=.*/WINTERMINAL=$2/g" settings.conf
        echo "The terminal will be closed when 'stop' is used."
    # Checks if is false
    elif [[ $2 == "false" ]]; then
        # Modifyes the config file with the user preference
        sed -i "s/WINTERMINAL=.*/WINTERMINAL=$2/g" settings.conf
        echo "The terminal will NOT be closed when 'stop' is used."
    # If lacks option reminds the user of the usage
    else
        echo "Please enter 'true' or 'false' after the '-t' parameter."
    fi
# Checks if user wants to change the DISTRO
elif [[ $1 == '-d' ]] || [[ $1 == '-D' ]]; then 
    # Checks if user inputted a preference  
    if [ ! -z $2 ]; then 
        # Modifyes the config file with the user preference
        sed -i "s/DISTRO=.*/DISTRO=$2/g" settings.conf
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
        sed -i "s/EDITOR=.*/EDITOR=$2/g" settings.conf
        echo "IDE has been changed to $2 "
    # If lacks option reminds the user of the usage
    else
        echo "Please enter an IDE process name after '-d' parameter."
    fi
# Checks if the user is using the parameter to get help
elif [[ $1 == '-?' ]] || [[ $1 == "-help" ]]; then
    echo | echo; cat help.txt; echo; echo
# Checks if user's input is a supported paramenter
elif [ ! -z $1 ]; then
    echo "ERROR: Parameter not accepted"
    echo "To change the settings try using the available parameters"
    echo "that you can check with 'stop -?' or 'stop -help'."
# If the code has no parameter runs the Powershell Script to close WSL
else
    # Promt the user with a message and runs shutdown.ps1 script
    echo "Turning Off"
    sleep 0.4

    # Runs Powershell Script to close WSL
    powershell.exe start shutdown.ps1 -WindowStyle hidden; exit
fi