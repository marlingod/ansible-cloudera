 couple step to run the ansible scripts
1. the cluster.txt file contains the list of hosts
2. preparessh.sh contains the scripts to copy the public keys into autorized_keys on the hosts
3. Update the host files with the new servers name
4. check if the connection work by running
 ansible all -m ping
5. before running the java.yml . ge the current link of the java sdk from oracle
site and update oracle_java_url_rpm in group_vars/all
then run ansible_playbook java.yml
6. run ansible-playbpook site.yml for java install, os prep and cm_agent install
7. to run a specif role on on specific host
ansible-playbook site.yml --tags "java" --limit "yg-cluster-1.gce.cloudera.com"
insert tag in the site.yml or the in themain fole of the roles
# cloudera_playbook
