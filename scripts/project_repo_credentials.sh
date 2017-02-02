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

MY_PATH="`dirname \"$0\"`"              # relative
MY_PATH="`( cd \"$MY_PATH\" && pwd )`"  # absolutized and normalized
if [ -z "$MY_PATH" ] ; then
  # error; for some reason, the path is not accessible
  # to the script (e.g. permissions re-evaled after suid)
  exit 1  # fail
fi

# get username
echo -e "Enter your project's repository username:"
read bb_user

# get password
echo -e "Enter your project's repository password:"
read bb_pass

touch "$MY_PATH/../ansible/group_vars/project_repo_credentials.yml"
echo "project_username: ${bb_user}" > "$MY_PATH/../ansible/group_vars/project_repo_credentials.yml"
echo "project_password: $(urlencode $bb_pass)" >> "$MY_PATH/../ansible/group_vars/project_repo_credentials.yml"