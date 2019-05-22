#hardcode password entry for alpines here?
ssh-keygen -t rsa > ~/ssh/id_rsa
ssh-copy-id -i ~/ssh/id_rsa root@192.168.1.20
ssh-copy-id -i ~/ssh/id_rsa root@192.168.1.21
ssh-copy-id -i ~/ssh/id_rsa root@192.168.1.22
ssh-copy-id -i ~/ssh/id_rsa root@192.168.1.23

ansible mynodes -i ./hosts.ini -m curl
ansible mynodes -i ./hosts.ini -b -m raw -a "apk -U add python3"
ansible mynodes -i ./hosts.ini -m ping

ansible-playbook webserver.yaml -i./hosts.ini

curl 192.168.1.20:80
curl 192.168.1.21:80
curl 192.168.1.22:80
curl 192.168.1.23:80
