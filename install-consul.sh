#!/bin/bash

dpkg -s unzip &>/dev/null || {
	# update and unzip
	sudo apt-get -y update && sudo apt-get install -y unzip
}


# install consul 
if [ ! -f ~/consul ]; then
	cd ~
	version='0.8.0'
	wget https://releases.hashicorp.com/consul/${version}/consul_${version}_linux_amd64.zip -O consul.zip
	unzip consul.zip
	rm consul.zip

	# make consul executable
	chmod +x consul
fi
