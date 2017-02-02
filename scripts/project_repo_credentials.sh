#!/bin/bash

function urlencode() {
	local LANG=C
	for ((i=0;i<${#1};i++)); do
		if [[ ${1:$i:1} =~ ^[a-zA-Z0-9\.\~\_\-]$ ]]; then
			printf "${1:$i:1}"
		else
			printf '%%%02X' "'${1:$i:1}"
		fi
	done
}

# get username
echo -e "Enter your project's repository username:"
read bb_user

# get password
echo -e "Enter your project's repository password:"
read bb_pass

echo "project_username: ${bb_user}" > ../ansible/group_vars/project_repo_credentials.yml
echo "project_password: $(urlencode $bb_pass)" >> ../ansible/group_vars/project_repo_credentials.yml