pull: 
		git pull
init: pull
		terraform init
plan: init
		terraform plan
apply: plan
		terraform apply --auto-approve

cleanup:
		find / -type d -name ".terraform" -exec rm -rf {} \;