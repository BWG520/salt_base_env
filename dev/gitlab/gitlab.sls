repo_file:
  file.managed:
    - name: /etc/yum.repos.d/gitlab-ce.repo
    - source: salt://gitlab/files/gitlab-ce.repo
    - user: root
    - group: root
    - mode: 644

base_pakages:
  pkg.installed:
    - pkgs:
        - curl
        - policycoreutils
        - openssh-server
        - openssh-clients
        - postfix
        - gitlab-ce
postfix_server:
  service.running:
    - name: postfix
    - enable: True

config_gitlab:
  cmd.run:
    - name: gitlab-ctl reconfigure

