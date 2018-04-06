#! /bin/bash

#copy temp images to this RPI
cp /home/pi/Downloads/temperature*.png /home/pi/eWine-orchestrator/temperature_files/

#remove temperature files
#rm -rf /home/pi/Downloads/temperature*.png

#sync folder with scampi folder
rsync -aP /home/pi/eWine-orchestrator/temperature_files/ /home/pi/Scampi\ App\ Developer\ Package\ 0.4.1b/bin/java/FileTransfer/files/temperature_images

#copy humidity images to the other RPI
#ethernet rpi_y_w
#scp -i /home/pi/.ssh/id_rsa /home/pi/Downloads/humidity*.png pi@192.168.2.20:/home/pi/Downloads/humidity_images/

#wi-fi rpi_y_w
scp -i /home/pi/.ssh/id_rsa /home/pi/Downloads/humidity*.png pi@192.168.1.217:/home/pi/Downloads/humidity_images/

#remove humidity files
#rm -rf /home/pi/Downloads/humidity*.png

