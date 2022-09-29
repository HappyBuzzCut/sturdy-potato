/etc/rsyslog.d/remote.conf:
     file.managed:
          - source: salt://files/rsyslog-logstash/remote.conf

rsyslog:
  service.running:
    - watch:
      - file: /etc/rsyslog.d/remote.conf
    - enable: True
    - restart: True
