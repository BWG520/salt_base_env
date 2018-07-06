ntpdate-install:
  pkg.installed:
    - name: ntpdate

cron-ntpdate:
  cron.present:
    - name: /usr/sbin/ntpdate time1.aliyun.com
    - user: root
    - minute: '*/5'
