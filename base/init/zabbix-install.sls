zabbix-repo:  
  file.managed:
    - name: /etc/yum.repos.d/zabbix-release-3.0-1.el7.noarch.rpm
    - source: salt://init/files/zabbix-release-3.0-1.el7.noarch.rpm
    - user: root
    - group: root
    - mode: 644
install-repo:
  cmd.run:
    - name: rpm -ivh /etc/yum.repos.d/zabbix-release-3.0-1.el7.noarch.rpm
    - unless: test -f /etc/yum.repos.d/zabbix.repo
zabbix-agent-install:  
  pkg.installed:
    - name: zabbix-agent
    - require:
      - file: /etc/yum.repos.d/zabbix-release-3.0-1.el7.noarch.rpm
