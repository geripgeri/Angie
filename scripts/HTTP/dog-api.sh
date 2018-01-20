#!/bin/bash

curl -X GET https://dog.ceo/api/breeds/image/random | python3 -c "import sys, json; print(json.load(sys.stdin)['message'].split('https://')[1])" | curl -X POST -H "x-ha-access: $1" -H "Content-Type: application/json" -d "{\"state\": \"$(</dev/stdin)\", \"attributes\": {\"hidden\": \"true\"} }" http://localhost:8123/api/states/sensor.dog_api_image
