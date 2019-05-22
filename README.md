written by Sean Caster

shell script name is startup.sh
ansible playbook name is webserver.yaml

First start up your pfsense router and wait for the bootup to finish before starting other machines

Then startup your CLI CentOS VM and your 4 Alpine VMs

Login to your CLI controller

ssh-keygen needs to generate your key; simply press enter 3 times when script hangs for input (no passphrase needed and default file location desired)

The script will need your authentication to setup new RSA ssh keys; enter "yes" and then your alpine password 4 times when prompted

Expected output are four command line outputted 4 CLI represented HTML files holding timestamps from when the pages were provisioned from the 4 Alpine VMs
