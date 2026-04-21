# iocage plugins

* [Create an unofficial iocage plugin](https://www.truenas.com/community/resources/create-an-unofficial-iocage-plugin.99/)
* [iocage plugins](https://freebsd.github.io/iocage/plugins.html)


## ansible-client-dhcp

DHCP enabled jail.

```sh
shell> iocage fetch -P ansible-client-dhcp -g https://github.com/vbotka/iocage-plugins -c 2
```

result

```sh
iocage list -P
+-----+-----------------------+------+-------+----------+--------------+----------------------+-----+----------+--------+---------+
| JID |         NAME          | BOOT | STATE |   TYPE   |   RELEASE    |         IP4          | IP6 | TEMPLATE | PORTAL | DOC_URL |
+=====+=======================+======+=======+==========+==============+======================+=====+==========+========+=========+
| 18  | ansible-client_dhcp_1 | on   | up    | pluginv2 | 15.0-RELEASE | epair0b|10.10.99.112 | -   | -        | -      | -       |
+-----+-----------------------+------+-------+----------+--------------+----------------------+-----+----------+--------+---------+
| 21  | ansible-client_dhcp_2 | on   | up    | pluginv2 | 15.0-RELEASE | epair0b|10.10.99.113 | -   | -        | -      | -       |
+-----+-----------------------+------+-------+----------+--------------+----------------------+-----+----------+--------+---------+
```
