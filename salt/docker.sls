yum-utils:
  pkg.installed

rpm --import "https://download.docker.com/linux/centos/gpg":
  cmd.run

docker-ce-stable:
  pkgrepo.managed:
    - humanname: Docker CE Stable - $basearch
    - baseurl: "https://download.docker.com/linux/centos/$releasever/$basearch/stable"
    - enabled: true
    - gpgcheck: 1
    - gpgkey: "https://download.docker.com/linux/centos/gpg"


docker-ce:
  pkg.installed

docker-ce-cli:
  pkg.installed

containerd.io:
  pkg.installed

docker.service:
  service.running:
    - enable: True

