#!/bin/sh

plugin_name=$(hostname)

case "$plugin_name" in
    ansible-test)
	. "$(dirname "$0")/post_install_ansible_test.sh"
	;;
    ansible-zero)
	. "$(dirname "$0")/post_install_ansible_zero.sh"
	;;
    syslog-ng)
	. "$(dirname "$0")/post_install_syslog_ng.sh"
	;;
esac
