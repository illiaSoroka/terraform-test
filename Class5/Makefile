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

london: 
		terraform workspace new london || terraform workspace select london && terraform apply --auto-approve -var-file envs/eu-west-2/london.tfvars


virginia-destroy: 
		terraform workspace new virginia || terraform workspace select virginia && terraform destroy --auto-approve -var-file envs/us-east-1/virginia.tfvars

ohio-destroy: 
		terraform workspace new ohio || terraform workspace select ohio && terraform destroy --auto-approve -var-file envs/us-east-2/ohio.tfvars

california-destroy: 
		terraform workspace new california || terraform workspace select california && terraform destroy --auto-approve -var-file envs/us-west-1/california.tfvars

oregon-destroy: 
		terraform workspace new oregon || terraform workspace select oregon && terraform destroy --auto-approve -var-file envs/us-west-2/oregon.tfvars

london-destroy: 
		terraform workspace new london || terraform workspace select london && terraform destroy --auto-approve -var-file envs/eu-west-2/london.tfvars



destroy: 
		terraform destroy --auto-approve

all: 
		make ohio && make virginia && make california && make oregon

destroy-all: 
		make ohio-destroy && make virginia-destroy && make oregon-destroy && make california-destroy

cleanup:
		find / -type d -name ".terraform" -exec rm -rf {} \;