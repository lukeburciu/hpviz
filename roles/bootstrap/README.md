bootstrap
=========

Bootstraps remote server with CI Pipeline user

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

CI automation user to add to remote server
`bootstrap_ci_username: hpviz-ci`

CpipI Automations public ssh key
`bootstrap_ci_pubkey: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCsAK7JA+lFIAm9Wnj6x1graKajCi9Sis2M8gwDktRZ8sEPAK7ifFFvkG3T9jDTCnE9FXp6IaLtJlhsg5fqOFcJdwYtadyuCOoTGxL7SrPc5Kze9NbQJYNbXQPc6VQop04Rbj5eeh+kjpr0C8PAPw/lvOksKwIqqvZ5HykdQ7OXiP1WBCaA8bh6hEoi0+zMGem5/hOyWCkqtf3dnUC/2GPbTW8qSBzQxJpaQnMcnw/8dDYEDxQ9FC5m4j8cL/Ol1JIR8f3T5La2T990v18y/LY8JmNF7xsKqec6C2ImWmOKEMlUPUhN8BJLFPgTnAaR3JTVbQHMVukITDNRF+QmTipsUZfQnnnGjwtvuuPqu8ZQjue9itEQBEk7l+aC6ZRfyoEErWLownSDNG3lAqaQb+7qoTwOPrV7/ifeRX/8sEzyQERRaZXbPOv0ZFl2IyCUoq3FXKVlukDBv6zYwEqzQmRlCXK9E4SxCttur9RieGxHiDNEaBG26mvAEnrlpuFWs99SUuh0Jbu+e2bQhL8veR1p3iyLYGZ6YEE/jhe4ViyMlVNEmnrGuuTS229SDpykr+YLKhd42ND7b5WdEL9R47UzzuFdXvkk9Zv7KZ8TgOOwg4xMGmi4LH2phqc8NjxusLwJedmREQSs85YT3zOlHU1g7SIJx1dadRkTUz/XOEPDAQ== hpviz-ci"`

Example Playbook
----------------

    - hosts: servers

      roles:
         - role: bootstrap
           - bootstrap.ci.username: ci_user
           - bootstrap.ci.pubkey: "ssh-rsa .... ci_users public key"

License
-------

MIT

Author Information
------------------

Stephen Eaton <sceaton@our.ecu.edu.au>
