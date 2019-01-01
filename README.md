Home-assistant configuration.

[![Build Status](https://travis-ci.org/geripgeri/Angie.svg?branch=master)](https://travis-ci.org/geripgeri/Angie)

# Installing to Raspberry Pi 3 using Hassbian.

- Download & Install [Hassbian](https://home-assistant.io/docs/installation/hassbian/installation/)
- Checkout the project: `git clone https://github.com/geripgeri/angie`
- Make a symlink: `ln -s angie/ .homeassistant`
- Create a `secrets.yaml` file
- Install additional python lib: `sudo pip3 install Adafruit_BMP`
- If you want to use GPIO: 
  - `sudo apt-get install pigpio python-pigpio python3-pigpio -y`
  - `sudo systemctl enable pigpiod && sudo systemctl start pigpiod`
  - `sudo raspi-config` - `Interfacing Options` - `Remote GPIO` - `Yes`
  - `sudo pip3 install pigpio`
- Instal nmap: `sudo apt update && apt install nmap -y`
- To Enable I2C: `sudo raspi-config` - `Interfacing Options` - `I2C` - `Yes`
- Enable Bluetooth: `sudo bluetoothctl power on`

