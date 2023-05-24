## CPU-SPEED.BASH
This is a BASH script to easily set a custom CPU governor and speed across all CPU cores.

It elegantly selects all available CPU cores, requests the user to type in a number between the minimum and maximum MHz their CPU can operate, then automatically applies it to all CPU cores. 

It then scans for available CPU governor modes and proceeds to prompt the user and effortlessly applies the entered selection to all available CPU cores.

Simply open a terminal and execute the script with "./cpu-speed.bash"

##
Update Queue:

WIP - There needs to be a MINIMUM speed prompt, so the MIN/MAX can be matched for true governing. 

WIP - There needs to be a numbered alias for selection of govenor modes to speed up the process of typing. 
##
