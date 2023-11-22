pull: 
		git pull

init: pull
		terraform init
	
validate: 
		terraform validate

plan: init
		terraform plan

virginia: plan
		terraform apply --auto-approve -var-file envs/us-east-1/virginia.tfvars

ohio: plan
		terraform apply --auto-approve -var-file envs/us-east-2/ohio.tfvars

california: plan
		terraform apply --auto-approve -var-file envs/us-west-1/california.tfvars

oregon: plan
		terraform apply --auto-approve -var-file envs/us-west-2/oregon.tfvars

virginia-destroy: 
		terraform destroy --auto-approve -var-file envs/us-east-1/virginia.tfvars

ohio-destroy: 
		terraform destroy --auto-approve -var-file envs/us-east-2/ohio.tfvars

california-destroy: 
		terraform destroy --auto-approve -var-file envs/us-west-1/california.tfvars

oregon-destroy: 
		terraform destroy --auto-approve -var-file envs/us-west-2/oregon.tfvars



destroy: 
		terraform destroy --auto-approve

cleanup:
		find / -type d -name ".terraform" -exec rm -rf {} \;