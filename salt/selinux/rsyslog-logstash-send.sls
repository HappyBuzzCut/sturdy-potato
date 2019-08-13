rsyslog-logstash-send-file:
  file.managed:
    - name: /root/rsyslog-logstash-send.pp
    - source: salt://files/selinux/rsyslog-logstash-send.pp

rsyslog-logstash-send-module:
  selinux.module:
    - name: rsyslog-logstash-send
    - module_state: enabled
    - install: True
    - source: /root/rsyslog-logstash-send.pp
    - require:
      - rsyslog-logstash-send-file

