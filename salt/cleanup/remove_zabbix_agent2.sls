zabbix-agent2.service:
    service.running:
        - enable: False

zabbix-agent2:
    pkg.removed

zabbix:
    pkgrepo.absent

zabbix-unsupported:
    pkrepo.absent

/etc/zabbix/:
    file.absent


/var/log/zabbix/:
    file.absent