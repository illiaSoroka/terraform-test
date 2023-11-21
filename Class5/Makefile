pull: 
		git pull

init: pull
		terraform init
	
validate: init

plan: validate
		terraform plan

apply: plan
		terraform apply --auto-approve

destroy: plan
		terraform destroy --auto-approve

cleanup:
		find / -type d -name ".terraform" -exec rm -rf {} \;