#!/bin/bash
Xvfb :1 -screen 0 1024x768x16 & 
export DISPLAY=:1
java -jar /app/digital-clock-1.0-SNAPSHOT.jar
