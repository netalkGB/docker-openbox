#!/bin/sh
Xvfb :0 -screen 0 1024x768x24 & openbox & x11vnc -nopw -q -forever -loop -shared 
