#!/usr/bin/python
import Adafruit_BMP.BMP085 as BMP085
sensor = BMP085.BMP085()
print('{0:0.2f}'.format(sensor.read_pressure()))
