#!/bin/sh

plugin_name: "$(hostname)"

case "$plugin_name" in
    ansible-test)
	cat << EOF > /root/PLUGIN_INFO
plugin_name: $plugin_name
plugin_ip: $IOCAGE_PLUGIN_IP
EOF
	;;
    ansible-zero)
	pw add user -n admin -c Administrator -s /bin/sh -m
        echo "admin ALL=(ALL) NOPASSWD: ALL" > /usr/local/etc/sudoers.d/admin
	cat << EOF > /root/PLUGIN_INFO
plugin_name: $plugin_name
plugin_ip: $IOCAGE_PLUGIN_IP
EOF
	;;
esac
