"""
Script for getting a sharable shortened link for a Dropbox file.
The first argument of the program is the path to the file,
relative to the Dropbox folder, without a slash.
The Dropbox access token must reside in ./ACCESS_TOKEN.
"""

import dropbox
import sys

print sys.executable

# def main(argv):
with open('./ACCESS_TOKEN') as f:
  access_token = f.readline()
dbx = dropbox.Dropbox(access_token)
print access_token

# file_path = argv[1]
file_path = 'foo'
print "/" + file_path
print dbx.sharing_create_shared_link("/" + file_path)    

# if __name__ == '__main__':
#   main(sys.argv)
