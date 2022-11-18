#!/bin/bash

if [ $USER == "root" ]; then
    echo "Please run as a user with sudo privledges, not as root"
    exit
fi

echo "This will install Python and Ansible."
read -p "use Ctrl+C to abort, or enter to continue.."

PATH=/home/$USER/.local/bin:$PATH
sudo apt install git python3 python3-pip -y
python3 -m pip install --upgrade pip
python3 -m pip install --user ansible
python3 -m pip install --user ansible-lint
git clone https://github.com/Sarlaac/ansible_mc_server.git
cd ansible_mc_server

echo "Minecraft server is configured to used 8GB memory by default"
echo "Search for and edit MEMORY value if the server doesn't have at least 10GB memory."
echo "Now run: ansible-playbook install_mc_docker.yml"
