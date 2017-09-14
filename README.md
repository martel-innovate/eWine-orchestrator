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
