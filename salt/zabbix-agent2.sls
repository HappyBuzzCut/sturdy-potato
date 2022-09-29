yum-utils:
  pkg.installed

rpm --import "https://repo.zabbix.com/RPM-GPG-KEY-ZABBIX":
  cmd.run

rpm --import "https://repo.zabbix.com/RPM-GPG-KEY-ZABBIX-A14FE591":
  cmd.run

zabbix:
  pkgrepo.managed:
    - humanname: Zabbix Official Repository - $basearch
    - baseurl: "https://repo.zabbix.com/zabbix/6.2/rhel/8/$basearch/"
    - enabled: true
    - gpgcheck: 1
    - gpgkey: "https://repo.zabbix.com/RPM-GPG-KEY-ZABBIX-A14FE591"

zabbix-unsupported:
  pkgrepo.managed:
    - humanname: Zabbix Official Repository (non-supported) - $basearch
    - baseurl: "https://repo.zabbix.com/non-supported/rhel/8/$basearch/"
    - enabled: true
    - gpgcheck: 1
    - gpgkey: "https://repo.zabbix.com/RPM-GPG-KEY-ZABBIX"

zabbix-agent2:
  pkg.installed

/etc/zabbix/zabbix_agent2.conf:
  file.managed:
    - source: salt://files/zabbix-agent2/zabbix_agent2.conf
    - template: jinja
    - context:
      {% if grains['host'].startswith('zbx') %}
        server: 127.0.0.1
      {% elif grains['domain'] == 'hoffmann.lan'%}
        server: zbx-proxy.hoffmann.lan
      {% else %}
        server: zbx-master.hoffmann.lan
      {% endif %}

zabbix-agent2.service:
  service.running:
    - enable: True
    - watch:
      - file: /etc/zabbix/zabbix_agent2.conf
    - full_restart: True

