#!/bin/bash

BASE_CURRENCY=""

if [ "$1" == "" ]; then
    BASE_CURRENCY="USD"
else
    BASE_CURRENCY="$1"
fi

exchange_rates=$(curl http://api.fixer.io/latest?base=$BASE_CURRENCY)

# echo "Raw Data"
echo "$exchange_rate: $exchange_rates"

# echo "Raw Rates"
# echo "$exchange_rate: ${exchange_rates["rates"]}"

# for exchange_rate in ${exchange_rates["rates"]}
# do
#     echo "$exchange_rate: ${exchange_rates["rates"]}"
# done
