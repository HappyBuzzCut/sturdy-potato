#RHEL based repos for SaltStack and Zabbix
zabbix:
  pkgrepo.managed:
    - humanname: Zabbix Official Repository - $basearch
    - baseurl: http://repo.zabbix.com/zabbix/4.0/rhel/7/$basearch/
    - comments:
        - 'http://repo.zabbix.com/zabbix/4.0/rhel/7/$basearch/'
    - gpgcheck: 1
    - key_url: salt://repokeys/RPM-GPG-KEY-ZABBIX-A14FE591

zabbix-non-official:
  pkgrepo.managed:
    - humanname: Zabbix Official Repository non-supported - $basearch
    - baseurl: http://repo.zabbix.com/non-supported/rhel/7/$basearch/
    - comments:
        - 'http://repo.zabbix.com/non-supported/rhel/7/$basearch/'
    - gpgcheck: 1
    - key_url: salt://repokeys/RPM-GPG-KEY-ZABBIX


