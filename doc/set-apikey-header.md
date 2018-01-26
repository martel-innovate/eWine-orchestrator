## 0. Set api-key and header

### Set api-key
![Set apikey](img/set-apikey.png)

Select Change node from menu and set these values:

	set: flow.apikey
	to: <insert your apikey>

### Set header apikey

![header apikey](img/header-apikey.png)

Select function node from menu and insert this code:

	msg.payload = {};
	msg.headers= {
	               'x-api-key': flow.get('apikey'),
	               'content-type': 'application/json'
	            };
	return msg;