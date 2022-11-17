#!/bin/bash

PATH=/home/$USER/.local/bin:$PATH
sudo apt install git python3 python3-pip -y
python3 -m pip install --upgrade pip
python3 -m pip install --user ansible
python3 -m pip install --user ansible-lint
git clone https://github.com/Sarlaac/ansible_mc_server.git
cd ansible_mc_server

echo "Minecraft server is configured to used 8GB memory by default"
echo "Search for and edit MEMORY value if the server doesn't have at least 10GB memory."
echo "Run: ansible-playbook install_mc_docker.yml"
echo "Become password is sudo user password"
echo "Minecraft server files installed to /home/docker/docker_mc_server"
echo ""
echo "IMPORTANT: when the playbook completes connect to the server on https://server_ip:9443 and set portainer password"
