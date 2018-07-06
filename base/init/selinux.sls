close_selinux:
  file.managed:
    - name: /etc/seliunx/config
    - srouce://init/files/selinux.config.template
    - user: root
    - group: root
    - mode: 644
