#!/bin/sh
#
# Print the current time in specified time zones.
# Helpful link: http://unix.stackexchange.com/questions/48101/how-can-i-have-date-output-the-time-from-a-different-timezone
#
. ./colors.sh

echo $PINK
echo 'a'
echo $BLUE
echo 'a'
echo $GREEN
echo 'a'
echo $RED
echo 'a'
echo $YELLOW
echo 'a'
echo $END

echo "World Time"

# TZONES refers to system time zones,
# displayed with the names in TZONE_NAMES.
# The corresponding cities in TZONES and TZONE_NAMES
# should have the same time zone.
# See /usr/share/zoneinfo/ for more names.
TZONES=(
  'US/Los_Angeles'
  'US/Chicago'
)
TZONE_NAMES=(
  'Seattle'
  'Austin'
)

# Show the time from the specified input time zone in the specified output
# time zone
for (( i=0; i<${#TZONES[@]}; i++ )); do
  TZONE=${TZONES[$i]}
  TZONE_NAME=${TZONE_NAMES[$i]}
  TZONE_DATE=`TZ=$TZONE date`
  echo "$TZONE_NAME: $TZONE_DATE"
done
