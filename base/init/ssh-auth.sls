ssh-key-copy:
  ssh_auth.present:
    - user: root
    - source: salt://init/files/id_rsa.pub
