salt-minion:
   pkg.installed:
    - name: salt-minion
service-start:
   service.running:
    - name: salt-minion
    - enable: True
