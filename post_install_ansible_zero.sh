#!/bin/sh

cat << EOF > /root/PLUGIN_INFO
plugin_name: $plugin_name
plugin_ip: $IOCAGE_PLUGIN_IP
EOF
