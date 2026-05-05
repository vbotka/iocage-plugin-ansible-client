#!/bin/sh

plugin_name=$(hostname)
ansible_custom_facts_dir="/etc/ansible/facts.d"

case "$plugin_name" in
    ansible-syslogng)
	mkdir -p "$ansible_custom_facts_dir"
	cat << EOF2 > "${ansible_custom_facts_dir}/iocage.fact"
#!/bin/sh
cat << EOF
{
  "iocage_plugin_name": "ansible-syslogng"
}
EOF
EOF2
	chmod a+x "${ansible_custom_facts_dir}/iocage.fact"
	;;
    ansible-test)
	cat << EOF > /root/PLUGIN_INFO
plugin_name: $plugin_name
plugin_ip: $IOCAGE_PLUGIN_IP
EOF
	mkdir -p "$ansible_custom_facts_dir"
	cat << EOF2 > "${ansible_custom_facts_dir}/iocage.fact"
#!/bin/sh
cat << EOF
{
  "iocage_plugin_name": "ansible-syslogng"
}
EOF
EOF2
	chmod a+x "${ansible_custom_facts_dir}/iocage.fact"
	;;
    ansible-zero)
	;;
esac
