mysql-server:
   pkg.installed

mysqld.service:
  service.running:
   - enable: True

