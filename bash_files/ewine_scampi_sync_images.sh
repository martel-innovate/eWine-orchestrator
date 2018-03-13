#! /bin/bash

#sync folder with scampi folder
rsync -aP /home/pi/Downloads/humidity_images/ /home/pi/Scampi\ App\ Developer\ Package\ 0.4.1b/bin/java/FileTransfer/files/humidity_images/

#remove humidity files
#rm -rf /home/pi/Downloads/humidity_images/*.*