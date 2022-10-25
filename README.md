# <p align="center">🧠Smart Stop🧠</p>

### <p align="center">Smart Stop is a program that lets you stop WSL by just typing 'smart-stop' in the terminal!</p>

---
**What it does?**</br>
Smart Stop will stop **ALL** the WSL services including the distros running in the background and the IDE that you specified in the settings as it is needed for WSL to not autorestart and close the `Vmmem` process.</br>

---
## 🛠️Requirements

  
 - **Compatible WSL distros:**<br/>
	  	✔️ Ubuntu<br/> 		 
	  	✔️ Debian<br/> 		 
	  	✔️ kali-linux<br/> 		 
	  	✔️ Ubuntu-16.04<br/> 		 
	  	✔️ Ubuntu-18.04<br/> 		 
	  	✔️ Ubuntu-20.04<br/>


 - **Install dpkg if not installed:**
	
       sudo apt-get update
       sudo apt-get install dpkg
       
 - **Enter this command to disable WSL autorestart on Windows Poweshell with admin rights:**
	
       dism.exe /online /disable-feature /featurename:Microsoft-Windows-Subsystem-Linux /norestart
  
 - **If you wish to revert the changes enter this command:**
      
       dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
  

## ⚙️Installation

*IMPORTANT: All the installation is made from the WSL Terminal you want the program to be installed and used.* </br>
</br>
 1. **Download the package:**
	 
		wget https://github.com/Flamiing/SmartStop/releases/download/v1.0.0/Smart_Stop_1.0_amd64.deb
 2. **Install the package:**

		sudo dpkg -i Smart_Stop_1.0_amd64.deb

 3. **Setup your preferences:**
 
	Set the distro in which you are installing Smart Stop by copying your distro name from the compatible distros section above and changing it for `DistroName`.

		smart-stop -d DistroName
	Set your IDE with the below command. Change `IDEName` by the process name of the IDE you use without the [filename extension](https://en.wikipedia.org/wiki/Filename_extension#:~:text=A%20filename%20extension%2C%20file%20name,md%20). <br/>
	If you don't know how to find a process name [click here](https://docs.celonis.com/en/how-to-discover-a-process-name-for-a-specific-application.html).

		smart-stop -i IDEName
		
	If you use _**Windows Terminal**_ and don’t want it to be closed you can set the option off by typing:

		smart-stop -t false
	If you change your mind you can just type:

		smart-stop -t true


## ⚡Usage

After everything is setup you can use `smart-stop` to close WSL and relax!<br/>
You can check at any time the list of available commands by typing `smart-stop -?` or `smart-stop --help`

## ✨Feedback

If you want to report any bugs or to give some feedback please contact me at **feedback@flamiing.com**.</br>
Also feel free to contribute to the project if you have any cool features or ideas that could make it better!

## 📃License

Smart Stop is under [MIT License](https://github.com/Flamiing/SmartStop/blob/main/LICENSE) © Flamiing
