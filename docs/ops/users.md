### Managing shell access

Shell access to the project servers is only accessible via ssh with a valid key i.e. password authentication is disabled by default.

All HPViz project server users are under config management and are managed the the `group_vars/viz/vars.yml` or `group_vars/sink/vars.yml` in the `user_list` variable.

1. users must have a public ssh key defined as password authentication is disabled
2. To remove a user from all groups replace the group list with empty string ''
3. Removing users change 'state: absent'  all their directories under /home/username will be removed
4. pub_key must be present for active users
5. all users are created with password login disabled
6. multiple groups if the the user is a member of is added as a list (see roles\user_management\README.md).  These groups must already exist on the remote system.


!!! example
    ``` yaml
    # These are users specific to "viz" group of hosts
    #  1) To remove a user from all groups replace the group list with empty string ''
    #  2) Removing users change 'state: absent'  all theire directories will eb removed
    #  3) pub_key must be present
    #  4) all users are created with password login disabled
    user_list:
    - username: hpviz-ci
        comment: "WARNING removing this user will break HPViz project CI"
        state: present
        shell: "/bin/bash"
        groups:
        - wheel
        pub_key: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCsAK7JA+lFIAm9Wnj6x1graKajCi9Sis2M8gwDktRZ8sEPAK7ifFFvkG3T9jDTCnE9FXp6IaLtJlhsg5fqOFcJdwYtadyuCOoTGxL7SrPc5Kze9NbQJYNbXQPc6VQop04Rbj5eeh+kjpr0C8PAPw/lvOksKwIqqvZ5HykdQ7OXiP1WBCaA8bh6hEoi0+zMGem5/hOyWCkqtf3dnUC/2GPbTW8qSBzQxJpaQnMcnw/8dDYEDxQ9FC5m4j8cL/Ol1JIR8f3T5La2T990v18y/LY8JmNF7xsKqec6C2ImWmOKEMlUPUhN8BJLFPgTnAaR3JTVbQHMVukITDNRF+QmTipsUZfQnnnGjwtvuuPqu8ZQjue9itEQBEk7l+aC6ZRfyoEErWLownSDNG3lAqaQb+7qoTwOPrV7/ifeRX/8sEzyQERRaZXbPOv0ZFl2IyCUoq3FXKVlukDBv6zYwEqzQmRlCXK9E4SxCttur9RieGxHiDNEaBG26mvAEnrlpuFWs99SUuh0Jbu+e2bQhL8veR1p3iyLYGZ6YEE/jhe4ViyMlVNEmnrGuuTS229SDpykr+YLKhd42ND7b5WdEL9R47UzzuFdXvkk9Zv7KZ8TgOOwg4xMGmi4LH2phqc8NjxusLwJedmREQSs85YT3zOlHU1g7SIJx1dadRkTUz/XOEPDAQ== hpviz-ci"

    ```
