# eWine-orchestrator
A Node-RED workflow for connectivity management on IoT Gateways.

For installation instructions, please refer to Node-RED's [official documentation][1].

The following npm modules are required:

* node-red-contrib-batcher
* node-red-contrib-ds18b20

Install them either locally, in the project folder:

	npm install node-red-contrib-batcher
	npm install node-red-contrib-ds18b20

or globally:
	
	sudo npm install -g node-red-contrib-batcher
	sudo npm install -g node-red-contrib-ds18b20

A [configuration][2] file is provided to load the runtime settings required for this project.

Launch Node-RED with the `--settings|-s` command line argument:

	node-red -s settings.js

[1]:https://nodered.org/#get-started
[2]:https://nodered.org/docs/configuration

## Connect DS18b20 to RPI and node-red.

*  Configuration device in GPIO

	DS18b20 wire circuit :

		DS18b20 / breadboard (column(from right),row(from bottom) or a10,b22,etc)
		gnd last, 4th 
		vcc first, 3rd
		sig a4

![ds18b20](doc/img/wire_circuit/ds18b20.jpg)
![overview](doc/img/wire_circuit/overview.jpg)
![Breadborad pin_a4](doc/img/wire_circuit/pin_a4.jpg)

*  Configuration device in RPI
	read the following document from page 11 (pagg. 1-10 not compatible DS18b20 wire circuit) :

		doc/adafruits-raspberry-pi-lesson-11-ds18b20-temperature-sensing.pdf
		configuration device on RPI: pag. 11-12
		script Python : pag. 13-15

*  Configuration device in node-red
	1.  run a bash shell
	2.  npm install node-red-contrib-ds18b20-sensor
	3.  for further information, read the doc here : https://flows.nodered.org/node/node-red-contrib-ds18b20-sensor

## LAUNCH ORCHESTRATOR + NODE-RED

1.  first shell
		#launch virt python:
		eWine-connectivity-manager/wifi_manager/interpreter/python_venv.sh

2.  second shell
		#activate virt-python:
		cd eWine-connectivity-manager
		. .venv/bin/activate

3.  third shell
		#launch node-red
		cd eWine-orchestrator
		sudo node-red -s settings.js
