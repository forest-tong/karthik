### Atom ###
To use the atom config files, move them into the ~/.atom directory.

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
or  
`$ ./sharelink.sh "<relative-path-to-file>#`.
