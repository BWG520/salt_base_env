include:
  - init.zabbix-install
/etc/zabbix/zabbix_agentd.conf:
  file.managed:
    - source: salt://init/files/zabbix_agentd.conf
    - user: root
    - group: root
    - mode: 644
zabbix-agent-start:
  service.running:
    - name: zabbix-agent
    - enable: True
    - require:
      - pkg: zabbix-agent
      - file: /etc/zabbix/zabbix_agentd.conf
