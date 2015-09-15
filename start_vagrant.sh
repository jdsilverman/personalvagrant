vagrant up --provision #| grep -v Default

cd ../ansible

read -s -p "What is your ansible-vault password?" password
echo $password >> .vault_pass.txt

for FILE in *[yml]
do
	case $FILE in
		[.]*production[.]*)
			ansible-playbook --syntax-check -i production $FILE  --vault-password-file .vault_pass.txt
			;;
		[.]*qa[.]*)
			ansible-playbook --syntax-check -i qa $FILE --vault-password-file .vault_pass.txt
			;;
		[.]*staging[.]*)
			ansible-playbook --syntax-check -i staging $FILE --vault-password-file .vault_pass.txt
			;;
		[.]*demo[.]*)
			ansible-playbook --syntax-check -i demo $FILE --vault-password-file .vault_pass.txt
			;;
		*)
			ansible-playbook --syntax-check -i dev $FILE --vault-password-file .vault_pass.txt
			;;
	esac

done


ansible-playbook ../../../noodle/build/ansible/noodlemarkets_demo.yml -i ../test/demo --extra-vars "hosts=192.168.254.72:22 user=itmarkets ec2_name_tag=temp" --private-key ../test/.ssh/id_rsa  --vault-password-file .vault_pass.txt #| grep -v Default

cd ../test

rm ../ansible/.vault_pass.txt
