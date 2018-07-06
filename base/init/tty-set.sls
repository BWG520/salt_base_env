#tty-timeout:
#  file.append:
#    - name: /etc/profile
#    - text:
#      - export TMOUT=300
tty-ps1:
  file.append:
    - name: /etc/bashrc
    - text:
      - export PS1='[\u@\h \w]\$'
