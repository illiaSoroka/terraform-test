pull: 
		git pull

init: pull
		terraform init
	
validate: init
		terraform validate

plan: validate
		terraform plan

verginia: plan
		terraform apply --auto-approve -var-file envs/us-east-1/verginia.tfvars

ohio: plan
		terraform apply --auto-approve -var-file envs/us-east-2/ohio.tfvars

california: plan
		terraform apply --auto-approve -var-file envs/us-west-1/california.tfvars

oregon: plan
		terraform apply --auto-approve -var-file envs/us-west-2/oregon.tfvars



destroy: 
		terraform destroy --auto-approve

cleanup:
		find / -type d -name ".terraform" -exec rm -rf {} \;