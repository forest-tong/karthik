"""
Script for getting a sharable shortened link for a Dropbox file.
The first argument of the program can either be the path to the file
relative to the Dropbox folder, without a slash, or it may
be the full path.

The Dropbox access token must reside in ./ACCESS_TOKEN.
"""

import dropbox
import os
import sys

def main(argv):
  with open('./ACCESS_TOKEN') as f:
    access_token = f.readline()[:-1]  # Strip newline
  dbx = dropbox.Dropbox(access_token)

  with open('./DROPBOX_PATH') as f:
    dropbox_path = f.readline()[:-1]

  # Strip the Dropbox path from file path
  file_path = argv[1]
  if file_path.startswith(dropbox_path):
    file_path = os.path.relpath(file_path, dropbox_path)

  shared_link = dbx.sharing_create_shared_link("/" + file_path, True)
  print shared_link.url

if __name__ == '__main__':
  main(sys.argv)
