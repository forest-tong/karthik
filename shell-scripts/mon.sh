### Prints out system vitals such as battery life ###

. ./colors.sh

echo "${BLUE}System Vitals${END}"

currentCapacity=$(ioreg -l -n AppleSmartBattery -r | grep CurrentCapacity | awk '{print $3}')
maxCapacity=$(ioreg -l -n AppleSmartBattery -r | grep MaxCapacity | awk '{print $3}')
batteryLife=$(((100 * $currentCapacity) / $maxCapacity))
echo "${RED}Battery Life:${END} ${batteryLife}%"
