#!/bin/sh

plugin_name_full=$(hostname)
plugin_name=$(echo "$str" | cut -d'_' -f1)
plugin_no=$(echo "$str" | cut -d'_' -f2)

case "$plugin_name" in
    ansible-test)
	cat << EOF > /root/PLUGIN_INFO
plugin_name: $plugin_name
plugin_name_full: $plugin_name_full
plugin_no: $plugin_no
plugin_ip: $IOCAGE_PLUGIN_IP

IP: $%%IP%%
JAIL_NAME: $%%JAIL_NAME%%
POOL_PATH: $%%POOL_PATH%%
TAG: $%%TAG%%
EOF
	;;
    ansible-zero)
	pw add user -n admin -c Administrator -s /bin/sh -m
        echo "admin ALL=(ALL) NOPASSWD: ALL" > /usr/local/etc/sudoers.d/admin
	cat << EOF > /root/PLUGIN_INFO
plugin_name: $plugin_name
plugin_name_full: $plugin_name_full
plugin_no: $plugin_no
plugin_ip:
EOF
	;;
esac
