#!/bin/sh
#
# Print the current time in specified time zones.
# Helpful link: http://unix.stackexchange.com/questions/48101/how-can-i-have-date-output-the-time-from-a-different-timezone
#
. ./colors.sh

echo "${BLUE}World Time${END}"

# TZONES refers to system time zones,
# displayed with the names in TZONE_NAMES.
# The corresponding cities in TZONES and TZONE_NAMES
# should be in the same time zone.
# See /usr/share/zoneinfo/ for a list of all
# system time zones.

# BEWARE: Terminal will not warn you if you misspell
# a system time zone or name one that does not exist.
# It will silently return the time in UTC.
TZONES=(
  "America/Los_Angeles"
  "America/Chicago"
  "America/New_York"
  "Europe/London"
  "Africa/Nairobi"
  "Asia/Kolkata"
  "Asia/Hong_Kong"
)
TZONE_NAMES=(
  "Seattle"  # Corresponds to Los Angeles time zone
  "Austin"
  "Chapel Hill"
  "London"
  "Nairobi"
  "Mumbai"
  "Hong Kong"
)

# Show the time from the specified input time zone in the specified output
# time zone
for (( i=0; i<${#TZONES[@]}; i++ )); do
  TZONE=${TZONES[$i]}
  TZONE_NAME=${TZONE_NAMES[$i]}
  TZONE_DATE=$(TZ=$TZONE date)
  echo "${RED}${TZONE_NAME}:${END} ${TZONE_DATE}"
done
