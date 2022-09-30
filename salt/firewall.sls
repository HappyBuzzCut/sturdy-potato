zabbix-agent:
  firewalld.service:
    - name: zabbix-agent
    - ports:
      - 10050/tcp

infranet:
  firewalld.present:
    - name: infranet
    - services:
      - zabbix-agent
    - sources:
      - 10.30.1.100/255
      