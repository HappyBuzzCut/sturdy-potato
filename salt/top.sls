base:
  '*':
   - core
   - configs
   - users

  'mydb-silo*':
   - mysqlserver
  'swarm*':
   - docker
