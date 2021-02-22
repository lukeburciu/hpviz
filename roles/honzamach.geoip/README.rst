.. _section-role-geoip:

Role **geoip**
================================================================================

Ansible role for convenient installation of the free IP geolocation databases
`GeoLite2 <https://dev.maxmind.com/geoip/geoip2/geolite2/#Download_Access>`__
provided by `MaxMind <https://www.maxmind.com/en/home>`__.

* `Ansible Galaxy page <https://galaxy.ansible.com/honzamach/geoip>`__
* `GitHub repository <https://github.com/honzamach/ansible-role-geoip>`__
* `Travis CI page <https://travis-ci.org/honzamach/ansible-role-geoip>`__


Description
--------------------------------------------------------------------------------

This role attempts to install the `GeoLite2 <https://dev.maxmind.com/geoip/geoip2/geolite2/#Download_Access>`__
IP geolocation databases locally on target host.

.. note::

    This role supports the :ref:`template customization <section-overview-customize-templates>` feature.


Requirements
--------------------------------------------------------------------------------

There are currently no requirements.


Dependencies
--------------------------------------------------------------------------------

This role is not dependent on any other roles.

No other roles have direct dependency on this role.


Managed files
--------------------------------------------------------------------------------

This role directly manages content of following files on target system:

* ``/etc/cron.d/geoipupdate``
* ``/etc/GeoIP.conf``


Role variables
--------------------------------------------------------------------------------

There are following internal role variables defined in ``defaults/main.yml`` file,
that can be overriden and adjusted as needed:

.. envvar:: hm_geoip__package_url

    Default URL of the Deb package from which to install the geoipupdate utility.

    * *Datatype:* ``string``
    * *Default:* ``https://github.com/maxmind/geoipupdate/releases/download/v4.1.5/geoipupdate_4.1.5_linux_amd64.deb``

.. envvar:: hm_geoip__account_id

    Your MaxMind account unique identifier (numeric).

    * *Datatype:* ``integer``
    * *Default:* undefined

.. envvar:: hm_geoip__license_key

    Your MaxMind account license key. Make sure you have enabled the *Update* option during key creation.

    * *Datatype:* ``string``
    * *Default:* undefined

.. envvar:: hm_geoip__edition_ids

    List of requested IP geolocation database to be installed on target host.

    * *Datatype:* ``list of strings``
    * *Default:* ``["GeoLite2-ASN", "GeoLite2-City", "GeoLite2-Country"]``

.. envvar:: hm_geoip__database_directory

    The directory to store the database files.

    * *Datatype:* ``string``
    * *Default:* ``/usr/share/GeoIP``

Additionally this role makes use of following built-in Ansible variables:

.. envvar:: ansible_lsb['codename']

    Debian distribution codename is used for :ref:`template customization <section-overview-customize-templates>`
    feature.


Foreign variables
--------------------------------------------------------------------------------

This role does not use any foreign variables defined in other roles.


Installation
--------------------------------------------------------------------------------

To install the role `honzamach.mentat <https://galaxy.ansible.com/honzamach/geoip>`__
from `Ansible Galaxy <https://galaxy.ansible.com/>`__ please use variation of
following command::

    ansible-galaxy install honzamach.geoip

To install the role directly from `GitHub <https://github.com>`__ by cloning the
`ansible-role-geoip <https://github.com/honzamach/ansible-role-geoip>`__
repository please use variation of following command::

    git clone https://github.com/honzamach/ansible-role-geoip.git honzamach.geoip

Currently the advantage of using direct Git cloning is the ability to easily update
the role when new version comes out.


Example Playbook
--------------------------------------------------------------------------------

Example content of inventory file ``inventory``::

    [servers_geoip]
    localhost

Example content of role playbook file ``playbook.yml``::

    - hosts: servers_geoip
      remote_user: root
      roles:
        - role: honzamach.geoip
      tags:
        - role-geoip

Example usage::

    ansible-playbook -i inventory playbook.yml


License
--------------------------------------------------------------------------------

MIT


Author Information
--------------------------------------------------------------------------------

Honza Mach <honza.mach.ml@gmail.com>
