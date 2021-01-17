Playbook de Backup de Routeadores RouterOS MikroTik

Automatizando o processo de backup de roteadores Mikrotik com playbooks Ansible e o Cron do Linux.

A parte mais legal desse playbook é que ao final do playbook, a última task do Ansible realiza a chamada de um script que faz commit/push dos arquivos de configuração do backup, onde os mesmo já podem ser copiados para um repositório Git.
