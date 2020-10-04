user_management
=========

Role to manager users on the projects servers

Requirements
------------

active user must have a ssh public key defined

Role Variables
--------------

These are users specific to groups of hosts as defined by the inventory group and shoudl reside in the group_var for thegroup in question.

  1) To remove a user from all groups replace the group list with empty string ''
  2) Removing users change 'state: absent'  all their directories under /home/username will be removed
  3) pub_key must be present for active users
  4) all users are created with password login disabled
  5) multiple groups the user is a member of is added as a list.  These groups must exist on the remote system

```
user_list:
  - username: freds
    comment: "Fred Smith - added by hpviz-ci"
    state: present
    groups:
      - somegroup
      - another group
    pub_key: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCsAK7JA+lFIAm9Wnj6x1graKajCi9Sis2M8gwDktRZ8sEPAK7ifFFvkG3T9jDTCnE9FXp6IaLtJlhsg5fqOFcJdwYtadyuCOoTGxL7SrPc5Kze9NbQJYNbXQPc6VQop04Rbj5eeh+kjpr0C8PAPw/lvOksKwIqqvZ5HykdQ7OXiP1WBCaA8bh6hEoi0+zMGem5/hOyWCkqtf3dnUC/2GPbTW8qSBzQxJpaQnMcnw/8dDYEDxQ9FC5m4j8cL/Ol1JIR8f3T5La2T990v18y/LY8JmNF7xsKqec6C2ImWmOKEMlUPUhN8BJLFPgTnAaR3JTVbQHMVukITDNRF+QmTipsUZfQnnnGjwtvuuPqu8ZQjue9itEQBEk7l+aC6ZRfyoEErWLownSDNG3lAqaQb+7qoTwOPrV7/ifeRX/8sEzyQERRaZXbPOv0ZFl2IyCUoq3FXKVlukDBv6zYwEqzQmRlCXK9E4SxCttur9RieGxHiDNEaBG26mvAEnrlpuFWs99SUuh0Jbu+e2bQhL8veR1p3iyLYGZ6YEE/jhe4ViyMlVNEmnrGuuTS229SDpykr+YLKhd42ND7b5WdEL9R47UzzuFdXvkk9Zv7KZ8TgOOwg4xMGmi4LH2phqc8NjxusLwJedmREQSs85YT3zOlHU1g7SIJx1dadRkTUz/XOEPDAQ== hpviz-ci"
  - username: janed
    comment: "Jane Doe - retired"
    state: absent
    groups: ''
```


Example Playbook
----------------

user_list defined in "servers" group_vars as per above example

```
    - name: example user management
      hosts: servers
      become: yes
      gather_facts: no

    roles:
      - role: user_management
```
License
-------

MIT

Author Information
------------------

Stephen Eaton <sceaton@our.ecu.edu.au>
