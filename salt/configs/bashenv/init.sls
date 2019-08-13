include:
  - .newprompt

{% if grains['os_family'] == 'Debian'%}
  - .fix_debian_color_prompt_crap
{% endif %}

