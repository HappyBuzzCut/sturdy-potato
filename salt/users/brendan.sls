brendan:
  user.present:
    - fullname: Brendan H.
    - home: /home/brendan
    - shell: /bin/bash
    - createhome: True
    - optional_groups:
      - docker
      - salt
      - wheel
      - sudo

  ssh_auth.present:
    - user: brendan
    - source: salt://files/ssh_keys/brendan.pub
    - config: '%h/.ssh/authorized_keys'

  cmd.run:
    - name: |
        echo "brendan ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/brendan
