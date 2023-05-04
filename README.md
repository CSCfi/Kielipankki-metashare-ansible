# META-SHARE

Ansible script, to install a slightly customized version of META-SHARE (https://github.com/CSCfi/META-SHARE/) to a cPouta VM.

The  main differences to stock META-SHARE:

 * Self registration disabled
 * ID used as PID, URL used as Access Location
 * GeoIP DB download fixed
 * backup/restore script
 
# Prerequisites

For Ansible/Openstack see ../portal/README.md
To recreate the server using a backup:
 * on the prodcution server run ```backup.sh backup```
 * copy  ```/var/backup/(day of week)-metashare_backup.tar.gz``` to this folder.
If the backup file is missing, the server will be created without content.
 
# Installation

Run

``` ansible-playbook metasharePouta.yml``` 

This should create the VM, install all dependencies and apply the backup.
To only apply the backup run 

``` ansible-playbook metasharePouta.yml -t restore_backup``` 

