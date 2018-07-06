yum_file:
  file.managed:
    - name: /etc/yum.repos.d/epel-release-latest-7.noarch.rpm
    - source: salt://init/files/epel-release-latest-7.noarch.rpm
yum_install:
  cmd.run:
    - name: rpm -ivh /etc/yum.repos.d/epel-release-latest-7.noarch.rpm
    - unless: test -f /etc/yum.repos.d/epel.repo
