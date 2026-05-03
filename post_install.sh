#!/bin/sh

plugin_name=$(hostname)
iocage_pool=$(iocage get -p pool)
iocage_pool_mountpoint=$(zfs get -H -o value mountpoint "$iocage_pool")
iocage_plugins_dir="${iocage_pool_mountpoint}/iocage/.plugins/github_com_vbotka_iocage-plugins"

case "$plugin_name" in
    ansible-test)
	. "${iocage_plugins_dir}/post_install_ansible_test.sh"
	;;
    ansible-zero)
	. "${iocage_plugins_dir}/post_install_ansible_zero.sh"
	;;
    syslog-ng)
	. "${iocage_plugins_dir}/post_install_syslog_ng.sh"
	;;
esac
