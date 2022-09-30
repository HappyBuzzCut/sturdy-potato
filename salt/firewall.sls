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
    - prune_services: True
    - sources:
    {% if grains['domain'] == 'hoffmann.lan'%}
        - 10.30.1.100/32
    {% else %}
        - 144.202.70.135/32
    {% endif %}
    
