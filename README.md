### Atom ###
To use the atom config files, move them into the ~/.atom directory.

### SHELL SCRIPTS ###
# GENERAL #
To use the shell scripts, run
$ ./<path-to-script.sh>
You can also set up an alias in your bash profile using
alias <name-of-command>="./<path-to-script.sh>"

# WEATHER #
- To subscribe to OpenWeatherMap, refer to "USEFUL LINKS" below
- To use your API key, set API_KEY in 'weather.sh' to your key
- Download LocateMe for Geolocation purposes via link below
- Register for MapZen API key for geolocation purposes vi link below

### USEFUL LINKS ###
- Subscribe to OpenWeatherMap - http://www.openweathermap.com/appid
- Download LocateMe - http://iharder.sourceforge.net/current/macosx/locateme/
- Register for MapZen - https://mapzen.com/developers

### Shell scripts ###
To use the shell scripts, first change the permission:  
`$ chmod +x <path-to-script.sh>`

The dollar sign represents the command prompt. Run the script:  
`$ ./<path-to-script.sh>`

You can also set up an alias in your bash profile:  
`$ alias <name-of-command>="./<path-to-script.sh>"`

### Dropbox ###
1. Install Python
2. Install pip
3. Install the Dropbox Python SDK: `$ pip install dropbox`
4. Create a Dropbox app here: https://www.dropbox.com/developers/apps
5. Generate an access token and copy it into dropbox/ACCESS_TOKEN.
6. Place your Dropbox folder path in dropbox/DROPBOX_PATH.
7. Follow the steps under section "Shell Scripts" for running sharelink.sh. This shell script requires one argument, the file path to the Dropbox file. It can be either the full path:  
`$ ./sharelink.sh "<path-to-dropbox-folder>/<relative-path-to-file>"`  
or the relative path from the Dropbox folder:  
`$ ./sharelink.sh "<relative-path-to-file>#`.
