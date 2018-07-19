repo_file:
  file.managed:
    - name: /etc/yum.repos.d/jenkins.repo
    - source: salt://jenkins/files/jenkins.repo
repo_key:
  cmd.run:
    - name: rpm --import http://pkg.jenkins.io/redhat/jenkins.io.key

jenkins_install:
  pkg.install:
    - pkgs:
      - java-1.8.0
      - jenkins
jenkins_service:
  service.running:
    - name: jenkins
    - enable: true
