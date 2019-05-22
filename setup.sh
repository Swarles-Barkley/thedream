ssh-keygen -t rsa > ~/ssh/id_rsa
ssh-copy-id -i ~/ssh/id_rsa root@192.168.1.20
ssh-copy-id -i ~/ssh/id_rsa root@192.168.1.21
ssh-copy-id -i ~/ssh/id_rsa root@192.168.1.22
ssh-copy-id -i ~/ssh/id_rsa root@192.168.1.23

curl 192.168.1.20:80
curl 192.168.1.21:80
curl 192.168.1.22:80
curl 192.168.1.23:80
