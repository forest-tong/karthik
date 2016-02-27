#!/bin/bash

# Allowed up to 1000 calls per day, beyond which
# you will be fined $1 per 10,000 API

OWM_API_KEY="ae5c2d2348f4942251e32a23538ee07c"
MAPZEN_API_KEY="search-dFaf7AM"
CITY_ID=524901

location=$(curl http://ip-api.com/json)
echo $location | python -mjson.tool
# echo ${location["city"]}

# weather=$(curl api.openweathermap.org/data/2.5/forecast/city?id=CITY_ID&APPID=$OWM_API_KEY)

# echo $weather | python -mjson.tool

echo "Powered by IP-API and OpenWeatherMap"
