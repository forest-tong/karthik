#!/bin/bash

BASE_CURRENCY=""

if [ "$1" == "" ]; then
    BASE_CURRENCY="USD"
else
    BASE_CURRENCY="$1"
fi

exchange_rates=$(curl http://api.fixer.io/latest?base=$BASE_CURRENCY)

echo $exchange_rates | python -mjson.tool

$(echo '[$exchange_rates]' | json -a rates)
