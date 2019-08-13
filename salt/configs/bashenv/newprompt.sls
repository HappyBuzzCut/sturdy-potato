/etc/profile.d/newprompt.sh:
  file.managed:
    - source: salt://files/bashenv/newprompt.sh
    - mode: 644

