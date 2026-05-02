#!/bin/sh

plugin_name_full=$(hostname)
plugin_name="${plugin_name_full%:*}"
plugin_no="${$plugin_name_full#*:}"

cat << EOF > /root/PLUGIN_INFO
plugin_name: "$plugin_name"
plugin_name_full: "$plugin_name_full"
plugin_no: "$plugin_no"
plugin_ip: "$IOCAGE_PLUGIN_IP"

IP: "$IP"
JAIL_NAME: "$JAIL_NAME"
POOL_PATH: "$POOL_PATH"
TAG: "$TAG"
EOF
