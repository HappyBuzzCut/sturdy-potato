rm -f /etc/ssh/sshd_config.d/01-permitrootlogin.conf:
  cmd.run

sshd:
  service.running:
    - reload: True