#! /bin/bash

scp -r -i /home/pi/.ssh/id_rsa /home/pi/eWine-orchestrator/sensor-data.json pi@192.168.2.20:/home/pi/Desktop/
#ssh -i /home/pi/.ssh/id_rsa pi@192.168.2.20 
#rsync -avhze pi@192.168.2.30:/home/pi/Scampi\ App\ Developer\ Package\ 0.4.1b/bin/java/FileTransfer/files/temperature_images/*.* /home/pi/Desktop/