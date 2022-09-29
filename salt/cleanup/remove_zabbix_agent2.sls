zabbix-agent2.service:
    service.running:
        - enable: False

zabbix-agent2:
    pkg.removed

/etc/yum.repos.d/zabbix*:
    file.absent

/etc/zabbix/:
    file.absent


/var/log/zabbix/:
    file.absent