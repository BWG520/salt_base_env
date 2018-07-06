/etc/security/limits.conf:
  file.managed:
    - srouce: salt://init/files/limit.conf.template
    - user: root
    - group: root
    - mode: 644
