/etc/profile.d/fzf-completion.sh:
  file.managed:
    - source: salt://files/fzf/fzf-completion.sh
    - mode: 644

/etc/profile.d/fzf-key-bindings.sh:
  file.managed:
    - source: salt://files/fzf/fzf-key-bindings.sh
    - mode: 644

/usr/local/bin/fzf:
  {% if grains['cpuarch'] == 'aarch64'%}
  
    file.managed:
      - source: salt://files/fzf/fzf-armv7
      - mode: 755

  {% else %}
    file.managed:
      - source: salt://files/fzf/fzf
      - mode: 755

  {% endif %}

/usr/local/sbin/fzf:
  file.symlink:
    - target: /usr/local/bin/fzf

