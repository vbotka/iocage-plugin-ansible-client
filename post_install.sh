#!/bin/sh

plugin_name=$(hostname)
ansible_custom_facts_dir="/etc/ansible/facts.d"

case "$plugin_name" in
    ansible-test)
	cat << EOF > /root/PLUGIN_INFO
plugin_name: $plugin_name
plugin_ip: $IOCAGE_PLUGIN_IP
EOF
	mkdir -p "$ansible_custom_facts_dir"
	cat << EOF > "${ansible_custom_facts_dir}/iocage.fact"
{
  "iocage_plugin_name": "$plugin_name"
}
EOF
	;;
    ansible-zero)
	cat << EOF > /root/PLUGIN_INFO
plugin_name: $plugin_name
plugin_ip: $IOCAGE_PLUGIN_IP
EOF
	;;
    syslog-ng)
	cat << EOF > /root/PLUGIN_INFO
plugin_name: $plugin_name
plugin_ip: $IOCAGE_PLUGIN_IP
EOF
	;;
esac
