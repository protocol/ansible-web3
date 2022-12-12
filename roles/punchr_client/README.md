punchr_client
=============

A simple Ansible role to deploy and start the [Punchr](https://github.com/dennis-tra/punchr/) client.

Requirements
------------

No additional prerequisites imposed by this Ansible role outside any dictated by the [Punchr](https://github.com/dennis-tra/punchr/) team. This role ought to work on most Unix-like systems and architectures (perhaps with some tweaking), but tested on Debian/Ubuntu with systemd, OpenBSD and FreeBSD on amd64, aarch64 and armv7l.

Role Variables
--------------

* `punchr_enabled`:
   * Description: Whether to deploy and enable the punchr service or remove it.
   * Default value: `false`
* `punchr_ver`:
   * Description: Version of punchr client to deploy/enable.
   * Default value: `v0.9.0`
* `punchr_user`:
   * Description: User to run Punchr client as.
   * Default value: `nobody`
* `punchr_base`:
   * Description: Directory to install Punchr client under
   * Default value: `/usr/local`
* `punchr_home`:
   * Description: Writable directory for Punchr state
   * Default value: `/var/run/punchr`
* `punchr_bin`:
   * Description: Format for the filename of the Punchr binary
   * Default value: `punchr_cli_{{ ansible_system | lower }}_{{ arch_table[ansible_architecture]}}`
* `punchr_uri`:
   * Description: URL to retrieve the Punchr binary from
   * Default value: `https://github.com/dennis-tra/punchr/releases/download/{{ punchr_ver }}/{{ punchr_bin }}`
* `punchr_api_key`:
   * Description: API key provided by the libp2p/punchr team (optional)
   * Default value: none

Dependencies
------------

None known.

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: protocollabs.web3.punchr_client }

License
-------

Apache-2.0

Author Information
------------------

mattgeddes on Github.
