#!/bin/sh

plugin_name_full=$(hostname)

IFS="_" read -r plugin_name plugin_no << EOF
$plugin_name_full
EOF

cat << EOF > /root/PLUGIN_INFO
plugin_name: "$plugin_name"
plugin_name_full: "$plugin_name_full"
plugin_no: "$plugin_no"
plugin_ip: "$IOCAGE_PLUGIN_IP"
EOF
