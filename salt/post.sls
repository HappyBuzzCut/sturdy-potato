cmd.run:
  - name: |
      rm -f /etc/ssh/sshd_config.d/01-permitrootlogin.conf

docker.service:
  service.restart