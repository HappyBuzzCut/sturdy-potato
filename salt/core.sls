vim:
  {% if grains['os_family'] == 'RedHat'%}
  pkg.installed:
    - name: vim-enhanced

  {% else %}
  pkg.installed 
  {% endif %}

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
