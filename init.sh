echo "making rsa keys\n"

mkdir .ssh

chmod 600 .ssh

ssh-keygen -t rsa -b 4096 -f .ssh/id_rsa -N ''
