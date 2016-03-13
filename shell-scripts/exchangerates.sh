#!/bin/bash

ER_APP_KEY="cf0ad5c218dd0305a49cf71818488390"

BASE_CURRENCY=""

if [ "$1" == "" ]; then
    BASE_CURRENCY="USD"
else
    BASE_CURRENCY="$1"
fi

#Supported Currencies
#GBP
#EUR
#INR
#HKD
#CAD
#KES
#TZS

# exchange_rates=$(curl http://api.fixer.io/latest?base=$BASE_CURRENCY)

exchange_rates=$(curl "http://apilayer.net/api/live?access_key=cf0ad5c218dd0305a49cf71818488390&currencies=CAD,EUR,GBP,HKD,INR,KES,TZS"&format=1)

# echo $exchange_rates | python -mjson.tool

echo $exchange_rates | python ../exchangerates/exchangerates.py $exchange_rates
