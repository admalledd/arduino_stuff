#copy this file to/as "makefile"

#get the current folder and set it here/now to the library paths and stuff
ARDUINO_SKETCHBOOK := $(realpath $(dir $(realpath $(lastword $(MAKEFILE_LIST)))))/..

#we prefer developing on the arduino nano 328 due to its physical size and how nice it is to proto with
# and how quickly it can move from dev to retail compatible hardware (no need for custom breakouts or such!)
BOARD_TAG=nano328

#where is the nano connected?
MONITOR_PORT  = /dev/ttyUSB0

CXXFLAGS = -std=c++11
#last thing: include the master make file. This will be what runs all those fancy tools to make/upload/monitor
include /usr/share/arduino/Arduino.mk