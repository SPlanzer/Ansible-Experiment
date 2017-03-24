# Ansible-Experiment
First experimentation with Ansible/Vagrant
based on https://blog.2ndquadrant.com/ansible-loves-postgresql/


## Plan
Establish a management node and remote host to install a PostgreSQL database into

My Local Machine will 
* Provision the two nodes (mgmt, db)
* Install Ansible on the mgmt node
* 


## Decisions 
The plan is to use a management node to 

using roles. Why - "what is the best way to organize your playbooks? The short answer is to use roles!"
(http://docs.ansible.com/ansible/playbooks_roles.html)

or 

One thing you will definitely want to do though, is use the “roles” organization feature, which is documented as part of the main playbooks page. See Playbook Roles and Include Statements. You absolutely should be using roles. Roles are great. Use roles. Roles! Did we say that enough? Roles are great.

Are roles over complicated for a simple test? - I don't know - see about

## What I have done
in project dir:
* init vagrantfile
* created inventory that will be used by mgmt node
* created ansible.cfg
 * added to cfg the path to inventory on the mgmt node
* created bootstrap-mgmt.sh that will be ran by ansible on mgmt node to install dependancies into db node 
* vagrant up
* vagrant ssh mgmt

### on mgmt node
*

