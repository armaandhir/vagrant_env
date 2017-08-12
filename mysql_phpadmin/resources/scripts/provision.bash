#!/bin/bash

# If the system is already provisioned, don't run provisioning again
if [ -f /home/vagrant/is_provisioned ]; then
    echo "System is already provisioned"
    exit
fi

/vagrant/resources/scripts/install_basic_packages.bash
/vagrant/resources/scripts/provision_docker.bash
/vagrant/resources/scripts/provision_containers.bash

# We're done, set provised flag
touch /home/vagrant/is_provisioned
