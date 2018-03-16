# Node Red orchestrator D2D flow
This flow is able to retrieve humidity and temperature data from a sensor, store them in a file and convert in images. It can also show data as a chart.

## Installation
### Node Red
Follow the guide at this [link](url:https://nodered.org)

### Apache & PHP
- Follow the procedures at [apache.org](url:http://apache.org) and [php.net](url:http://php.net) respectively


## Configuration

### GPIO

[Schema pin](img/28_Humiture_bb.png)
    

### Setting.js
1. Open setting.js
1. Change the path:
    - old path: lib/flows/orchestrator.json
    - new  path: lib/flows/orchestrator-D2D.json
1. save the file and exit

### Apache
1. Open /etc/hosts file
1. Insert this entry:
    - 127.0.0.1 www.xampp-json.org
1. Save the file and exit
1. Set virtual host with this url : www.xampp-json.org in httpd.conf file
1. Restart Apache

### PHP
1. Copy chart_to_img folder in Apache's htdocs folder (e.g. /var/www/html/)

### Node Red
1. Install humidity sensor node (dht11):
    - Full procedure at this [link](url:https://flows.nodered.org/node/node-red-contrib-dht-sensor)
    
1. Install batcher node:
    - npm install node-red-contrib-batcher


## Run flow
via terminal: sudo node-red -s settings.js