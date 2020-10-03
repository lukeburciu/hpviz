common_tasks
=========

Perform all common tasks on all servers in the project

Tasks:
  apt-update

Requirements
------------

none

Role Variables
--------------

none

Dependencies
------------

None

Example Playbook
----------------

    - hosts: all!localhost
      roles:
         - role: common_tasks

License
-------

MIT

Author Information
------------------

Stephen Eaotn <sceaton@our.ecu.edu.au>
