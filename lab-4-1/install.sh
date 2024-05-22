#!/usr/bin/env bash

# Create a script with the name install.sh that makes sure managed hosts meet the following
# requirements. It doesn’t matter if the hosts already meet the requirements; your script
# should be created such that it sets up a managed host according to these requirements if it
# has not yet been configured.
# • Install the httpd web server.
# • Start and enable the httpd web server.
# • Create a user with the name anna.
# • Copy the /etc/hosts file from the control machine to the /tmp/ directory on the managed
# host.

ansible all -m apt -a "name=apache2 state=latest clean=true"
ansible all -m service -a "name=apache2 state=started enabled=yes"
ansible all -m user -a "name=anna"
ansible all -m copy -a "src=/etc/hosts dest=/tmp/hosts"
