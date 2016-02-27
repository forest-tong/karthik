### ATOM ###
To use the atom config files, move them into the ~/.atom directory.

### SHELL SCRIPTS ###
To use the shell scripts, first change the permission:
`$ chmod +x <path-to-script.sh>`
The dollar sign represents the command prompt. Run the script:
`$ ./<path-to-script.sh>`
You can also set up an alias in your bash profile:
`$ alias <name-of-command>="./<path-to-script.sh>"`

### DROPBOX ###
1. Install Python
2. Install pip
3. Install the Dropbox Python SDK using:
`$ pip install dropbox`
4. Create a Dropbox app here: https://www.dropbox.com/developers/apps
5. Generate an access token
