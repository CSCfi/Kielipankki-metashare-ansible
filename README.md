# Archived 8.8.2024
META-SHARE is replaced by COMEDI, see http://urn.fi/urn:nbn:fi:lb-2021101104

# META-SHARE

Ansible script, to install a slightly customized version of META-SHARE (https://github.com/CSCfi/META-SHARE/) to a cPouta VM.

The  main differences to stock META-SHARE:

 * Self registration disabled
 * ID used as PID, URL used as Access Location
 * GeoIP DB download fixed
 * backup/restore script

# Prerequisites

 * [Pouta OpenStack RC file]((https://docs.csc.fi/cloud/pouta/install-client/#configure-your-terminal-environment-for-openstack)
 * Ansible packages from requirements.yml (`ansible-galaxy install -r requirements.yml`)
 * Python requirements from requirements.txt
```
virtualenv .venv -p python3
source .venv/bin/activate
pip install -r requirements_dev.txt
```


# Installation

To recreate the server using a backup:
 * on the prodcution server run ```backup.sh backup```
 * copy  ```/var/backup/(day of week)-metashare_backup.tar.gz``` to this folder.
If the backup file is missing, the server will be created without content.

Run

``` ansible-playbook metasharePouta.yml```

This should create the VM, install all dependencies and apply the backup.
To only apply the backup run

``` ansible-playbook metasharePouta.yml -t restore_backup```
