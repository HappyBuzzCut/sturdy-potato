base:
  '*':
   - core
   - configs
   - users
   - post

  'mydb-silo*':
   - mysqlserver
  'swarm*':
   - docker
