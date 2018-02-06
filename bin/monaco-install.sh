#!/bin/sh

sudo mkdir /usr/share/fonts/truetype/custom

sudo cp ./Monaco-Linux.ttf /usr/share/fonts/truetype/ 
ls /usr/share/fonts/truetype/custom/

sudo fc-cache -frv

