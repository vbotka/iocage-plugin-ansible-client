# iocage plugins

* [Create an unofficial iocage plugin](https://www.truenas.com/community/resources/create-an-unofficial-iocage-plugin.99/)
* [iocage plugins](https://freebsd.github.io/iocage/plugins.html)


## ansible-client-dhcp

DHCP enabled jail.

```sh
shell> iocage fetch -P ansible-client -g https://github.com/vbotka/iocage-plugins bpf=1 dhcp=1 vnet=1
Plugin: ansible-client
  Official Plugin: False
  Using RELEASE: 15.0-RELEASE
  Using Branch: 15.0-RELEASE
  Post-install Artifact: https://github.com/vbotka/iocage-plugins.git
  These pkgs will be installed:

Testing Host DNS response to pkg.FreeBSD.org
Testing ansible-client's SRV response to pkg.FreeBSD.org
Testing ansible-client's DNSSEC response to pkg.FreeBSD.org

Installing plugin packages:

Fetching artifact... 
Cloning git repository

Branch 15.0-RELEASE does not exist at https://github.com/vbotka/iocage-plugins.git!
Using "master" branch for plugin, this may not work with your RELEASE

Running post_install.sh
```

result

```sh
shell> iocage list -P
+-----+----------------+------+-------+----------+--------------+----------------------+-----+----------+--------+---------+
| JID |      NAME      | BOOT | STATE |   TYPE   |   RELEASE    |         IP4          | IP6 | TEMPLATE | PORTAL | DOC_URL |
+=====+================+======+=======+==========+==============+======================+=====+==========+========+=========+
| 41  | ansible-client | on   | up    | pluginv2 | 15.0-RELEASE | epair0b|10.10.99.109 | -   | -        | -      | -       |
+-----+----------------+------+-------+----------+--------------+----------------------+-----+----------+--------+---------+

```
