mariadb:
  pkg.installed
mariadb-server:
  pkg.installed
mysql-utilities:
  pkg.installed

mariadb.service:
  service.running:
   - enable: True

