# Ansible-Experiment
First experimentation with Ansible/Vagrant

## Plan
Establish a management node and remote host node to install a PostgreSQL database into

My Local Machine will 
* Provision the two nodes (mgmt, db) via vagrant
* Install Ansible on the mgmt node
* run an Ansilbe play-book against the (DB) remote node
 

## Decisions 
The plan is to use a management node to avoid clouding my local system. i.e avoided, adding, overwriting ssh keys , known hosts ...

using roles. Why - "what is the best way to organize your playbooks? The short answer is to use roles!"
(http://docs.ansible.com/ansible/playbooks_roles.html)

or 

One thing you will definitely want to do though, is use the “roles” organization feature, which is documented as part of the main playbooks page. See Playbook Roles and Include Statements. You absolutely should be using roles. Roles are great. Use roles. Roles! Did we say that enough? Roles are great.

## What I have done
in project dir:
* init vagrantfile
* created inventory that will be used by mgmt node
* created ansible.cfg
 * added to cfg the path to inventory on the mgmt node
* created bootstrap-mgmt.sh that will be ran by ansible on mgmt node to install dependancies into db node 
* vagrant up
* vagrant ssh mgmt
* running the ssh-addkey.yml playbook to estalbish password less entry 

...
