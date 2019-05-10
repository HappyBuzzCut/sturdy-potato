/etc/rsyslog.d/remote.conf:
     file.managed:
          - source: salt://files/rsyslog-logstash/remote.conf
          - source_hash: 129fe08b79a6f04009bbd89769d852d3

rsyslog:
  service.running:
    - watch:
      - file: /etc/rsyslog.d/remote.conf
    - enable: True
    - restart: True

