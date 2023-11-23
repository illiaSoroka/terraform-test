pull: 
		git pull

init: pull
		terraform init
	
validate: 
		terraform validate

plan: init
		terraform plan

virginia: 
		terraform workspace new virginia || terraform workspace select virginia && terraform apply --auto-approve -var-file envs/us-east-1/virginia.tfvars

ohio: 
		terraform workspace new ohio || terraform workspace select ohio && terraform apply --auto-approve -var-file envs/us-east-2/ohio.tfvars

california: 
		terraform workspace new california || terraform workspace select california && terraform apply --auto-approve -var-file envs/us-west-1/california.tfvars

oregon: 
		terraform workspace new oregon || terraform workspace select oregon && terraform apply --auto-approve -var-file envs/us-west-2/oregon.tfvars

virginia-destroy: 
		terraform workspace new virginia || terraform workspace select virginia && terraform destroy --auto-approve -var-file envs/us-east-1/virginia.tfvars

ohio-destroy: 
		terraform workspace new ohio || terraform workspace select ohio && terraform destroy --auto-approve -var-file envs/us-east-2/ohio.tfvars

california-destroy: 
		terraform workspace new california || terraform workspace select california && terraform destroy --auto-approve -var-file envs/us-west-1/california.tfvars

oregon-destroy: 
		terraform workspace new oregon || terraform workspace select oregon && terraform destroy --auto-approve -var-file envs/us-west-2/oregon.tfvars



destroy: 
		terraform destroy --auto-approve

cleanup:
		find / -type d -name ".terraform" -exec rm -rf {} \;

all: make ohio && make virginia && make california && make oregon

destroy-all: make destroy-ohio && make destroy-virginia && make destroy-oregon && make destroy-california