#!/bin/sh

# Create user 'admin'
pw add user -n admin -c Administrator -s /bin/sh -m

# Configure passwordless sudo for admin
echo "admin ALL=(ALL) NOPASSWD: ALL" > /usr/local/etc/sudoers.d/admin

echo $(printenv) > /root/PLUGIN_INFO
