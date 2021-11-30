include:
  - .newprompt
  - .bash_custom_histformat
  - .fzf

{% if grains['os_family'] == 'Debian'%}
  - .debian_simplify_bash
{% endif %}

