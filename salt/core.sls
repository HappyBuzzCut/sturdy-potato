vim:
{% if grains['os_family'] == 'RedHat'%}
  pkg.installed:
    - name: vim-enhanced

{% else %}
  pkg.installed 
{% endif %}

{% if grains['os_family'] == 'RedHat'%}
setroubleshoot-server:
  pkg.installed
{% endif %}

sudo:
  pkg.installed
lsof:
  pkg.installed
screen:
  pkg.installed
tmux:
  pkg.installed
mtr:
  pkg.installed
zip:
  pkg.installed
unzip:
  pkg.installed
sysstat:
  pkg.installed
wget:
  pkg.installed
rsync:
  pkg.installed
mlocate:
  pkg.installed
patch:
  pkg.installed


America/Chicago:
  timezone.system

