include:
  - .newprompt

{% if grains['os_family'] == 'Debian'%}
  - .debian_simplify_bash
{% endif %}

