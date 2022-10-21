# Smart Stop v0.7.2-preview

**Smart Stop is a program that lets you stop WSL by just typing 'smart-stop' in the terminal!**

### What it does?


Smart Stop will stop **ALL** the WSL services including the distros running in the background and the IDE that you specified in the settings as it is needed for the WSL service to not be autorestarted by itself and close the `Vmmem` process. 

## Requirements

  
 - **Compatible WSL distros:**
 
 -✔️ Ubuntu
 -✔️ Debian		 
 -✔️ kali-linux		 
 -✔️ Ubuntu-16.04		 
 -✔️ Ubuntu-18.04
 -✔️ Ubuntu-20.04
		 
		 
 - **Install dpkg if not installed**
	
		sudo apt-get update
		sudo apt-get install dpkg

## Installation
	

 1. **Download the package:**
	 
		wget https://github.com/Flamiing/SmartStop/releases/download/0.7.2-preview/Smart_Stop_0.7.2-preview_amd64.deb
 2. **Install the package:**

		sudo dpkg -i Smart_Stop_0.7.2-preview_amd64.deb

 3. **Setup your preferences:**
 
	Set the distro in which you are installing Smart Stop by copying your distro name from the compatible distros section above and changing it for `DistroName`.

		smart-stop -d DistroName
	Set your IDE with the below command. Change `IDEName` by the process name of the IDE you use without the [filename extension](https://en.wikipedia.org/wiki/Filename_extension#:~:text=A%20filename%20extension%2C%20file%20name,md%20). If you don't know how to find the process name [click here](https://docs.celonis.com/en/how-to-discover-a-process-name-for-a-specific-application.html).

		smart-stop -i IDEName
		
	If you use _**Windows Terminal**_ and don’t want it to be closed when the command is executed you can set the option off by typing `smart-stop -t false` into the terminal.
	If you change your mind you can just type `smart-stop -t true` to turn it back on.

 

## Usage

After everything is setup you can use `smart-stop` to close WSL and relax!
You can check at any time the list of commands by typing `smart-stop -?` or `smart-stop --help`
