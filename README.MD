# CPU-SPEED.BASH  
This is a Bash script to easily set a custom CPU governor and speed across all CPU cores.  

It elegantly selects all available CPU cores, requests the user to type in a number between the minimum and maximum MHz their CPU can operate, then automatically applies it to all CPU cores.  

It then scans for available CPU governor modes and proceeds to prompt the user and effortlessly applies the entered selection to all available CPU cores.  

## Installation  
Just download the ZIP and extract it somewhere, or clone the repository.  
#### Open the terminal and enter:  
    sudo git clone https://github.com/Zeph53/debian-cpu-speed/
    sudo cd debian-cpu-speed/
If you really wanted to, it can be added to "/usr/bin". Which makes it globally executable within Bash.  
#### Open the terminal and enter:  
    sudo git clone https://github.com/Zeph53/debian-cpu-speed/
    sudo cp -r debian-cpu-speed/cpu-speed.bash /usr/bin/
    sudo gio trash --force debian-cpu-speed/

## Uninstallation  
To uninstall the script, simply remove the script from your system.  
#### Open the terminal and enter:  
    sudo gio trash --force ~/debian-cpu-speed/
Or, if you installed it to "/usr/bin", remove the script from the binaries directory.  
#### Open the terminal and enter:  
    sudo gio trash --force /usr/bin/cpu-speed.bash

## Usage  
Simply execute the script.  
#### With the terminal open, enter:  
    sudo cpu-speed.bash
And then follow the directions presented by the terminal.  

If you want to skip interacting with the terminal
#### With the terminal open, enter:
    sudo cpu-speed.bash [MIN] [MAX]

## Updates
    Cleaned up code and added comments.  
    Script can now be launched with desired MHz as arguments.
    Governors now have numbered aliases, now forced to select one.
## Update Queue:
    Clean up comment debris.
    Make governors list a single line.
    Make governors optional to select.
    Fix schedutil typo again on LISTGOVERNS.
    Forcefully set the minimum speed to the minimum reported to the OS? (only if not adjusted) 
    *DONE There needs to be a MINIMUM speed prompt, so the MIN/MAX can be matched for true governing?  
    *DONE There needs to be a numbered alias for selection of govenor modes to speed up the process of typing?  
    CUI - xfce4-teriminal -x bash -i -c "SCRIPT"  
##  
