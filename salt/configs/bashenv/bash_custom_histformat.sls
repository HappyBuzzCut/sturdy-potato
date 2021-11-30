/etc/profile.d/bash_custom_histformat.sh:
  file.managed:
    - source: salt://files/bashenv/bash_custom_histformat.sh
    - mode: 644

