brendan:
  user.present:
    - fullname: Brendan H.
    - home: /home/brendan
    - createhome: True
    - empty_password: True
    - groups:
      {% if (grains['os_family'] == 'Debian') or (grains['os_family'] == 'Ubuntu') %}
      - sudo
      {% else %}
      - wheel
      {% endif %}

  ssh_auth.present:
    - user: brendan
    - source: salt://files/ssh_keys/brendan.pub
    - config: '%h/.ssh/authorized_keys'
