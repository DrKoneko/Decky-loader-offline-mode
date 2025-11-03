# Decky-loader-offline-mode
A simple script to create a loopback connection on SteamOS, allowing decky loader to launch even when offline!

This script was written by ChatGPT because I have no idea how to code stuff.

All the script does is create a loopback network interface on linux.

# Instructions

1.  Enter Desktop mode.
2.  Make sure you have a sudo password set with ```passwd``` in Konsole.
3.  Download and place the ```activate.sh``` script somewhere on your deck's storage.
4.  Open Konsole.
5.  Make sure the script is executable with ```chmod +x /path/to/activate.sh``` (Replace path with wherever you put your script.)
6.  Run ```/path/to/activate.sh```.
7.  When prompted, enter your sudo password.
8.  When Konsole says "Done!" you should now have a loopback interface listed as ```lo0``` under Networks.
9.  Return to gaming mode.
10.  Decky should now work! Any plugins that require network access won't work but anything that can run offline should work!
11.  You're done! Happy decky-ing!

To remove the connection, simply select "Disconnect" from the Networks menu (Desktop Mode)

If you'd like to make the process quicker, you can add the script to your desktop mode desktop as well as a shortcut for Konsole. After opening the Konsole window, simply drag the script file into the konsole window and press the A button or enter on a keyboard. When prompted, enter your password and the script will finish just as before.
