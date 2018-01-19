Home-assistant configuration.

[![Build Status](https://travis-ci.org/geripgeri/Angie.svg?branch=master)](https://travis-ci.org/geripgeri/Angie)

# Installing to Raspberry Pi 3 using Hassbian.

- Download & Install [Hassbian](https://home-assistant.io/docs/installation/hassbian/installation/)
- Checkout the project: `git clone https://github.com/geripgeri/angie`
- Make a symlink: `ln -s angie/ .homeassistant`
- Create a `secrets.yaml` file
- Install additional python lib: `sudo pip3 install Adafruit_BMP`
- If you want to use GPIO: 
  - `sudo systemctl enable pigpiod`
  - `sudo systemctl start pigpiod`
