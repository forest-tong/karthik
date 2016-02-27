link=$(python link-sharing.py foo 2> /dev/null)
if [[ $link = '' ]]
then
  echo "error"
else
  echo $link | pbcopy
fi
