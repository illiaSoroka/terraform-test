pull: 
		git pull
init: pull
		terraform init
plan: init
		terraform plan
apply: plan
		terraform apply --apply-approve

cleanup:
		find / -type d -name ".terraform" -exec rm -rf {} \;