/etc/skel/.bashrc:
  file.managed:
    - source: salt://files/bashenv/dotbashrc
    - user: root
    - group: root
    - mode: 644

/etc/skel/.bash_profile:
  file.managed:
    - source: salt://files/bashenv/dotbash_profile
    - user: root
    - group: root
    - mode: 644

