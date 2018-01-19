#!/bin/bash

sudo systemctl stop home-assistant@homeassistant.service 
bash -c "source /srv/homeassistant/bin/activate && pip3 install --upgrade homeassistant"
sudo systemctl start home-assistant@homeassistant.service

