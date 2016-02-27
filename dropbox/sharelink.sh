# Takes as an argument the full path to a Dropbox file.
# Copies the shortened Dropbox link to the clipboard
# if the file can be found, prints out an error otherwise.

. ../shell-scripts/colors.sh

link=$(python link-sharing.py "$1" 2> /dev/null)  # Throw away error output
if [[ $link = '' ]]
then
  echo "Dropbox could not create a link to the file."
  echo "Make sure to specify the correct file path."
  echo "If the file name contains spaces, surround it with quotes."
else
  echo "Link ${PINK}$link${END} copied to clipboard."
  echo $link | pbcopy
fi
