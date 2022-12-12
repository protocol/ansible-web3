# Ansible Collection - protocollabs.web3

## Overview

This Ansible collection houses a number of Ansible roles and modules that are used within [Protocol Labs](https://protocol.ai) for deployment and management of a variety of Web3 services. It is provided here for the benefit of the community.

## Roles

The following roles are included in this collection:

* [protocol.labs.web3.punchr_client](roles/punchr_client/README.md) -- An Ansible role to manage the deployment of the libp2p Punchr client used in aiding real-world testing of new libp2p functionality.

## Modules

## Contributors Guide

Contributions to this collection are welcome as standard Github pull requests. Contributors should follow general Ansible and Galaxy best practices, and also adhere to the following:

* Roles:
    * Roles should be named and behave as [roles](https://dictionary.cambridge.org/dictionary/english/role) (eg, kubo-node, lotus-miner), rather than functions or tasks (eg, install-kubo, setup-lotus).
    * Roles should include an accurate `meta/argument_specs.yml` definition.
    * Roles should include adequate documentation, which should be linked above.
* Run `ansible-lint` against the collection and clean up any warnings or errors
