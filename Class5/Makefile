pull: 
		git pull

init: pull
		terraform init
	
validate: 
		terraform validate

plan: init
		terraform plan

virginia: init
		terraform workspace new virginia || terraform workspace select virginia && terraform apply --auto-approve -var-file envs/us-east-1/virginia.tfvars

ohio: init
		terraform workspace new ohio || terraform workspace select ohio && terraform apply --auto-approve -var-file envs/us-east-2/ohio.tfvars

california: init
		terraform workspace new california || terraform workspace select california && terraform apply --auto-approve -var-file envs/us-west-1/california.tfvars

oregon: init
		terraform workspace new oregon || terraform workspace select oregon && terraform apply --auto-approve -var-file envs/us-west-2/oregon.tfvars

london: init
		terraform workspace new london || terraform workspace select london && terraform apply --auto-approve -var-file envs/eu-west-2/london.tfvars


virginia-destroy: init
		terraform workspace new virginia || terraform workspace select virginia && terraform destroy --auto-approve -var-file envs/us-east-1/virginia.tfvars

ohio-destroy: init
		terraform workspace new ohio || terraform workspace select ohio && terraform destroy --auto-approve -var-file envs/us-east-2/ohio.tfvars

california-destroy: init
		terraform workspace new california || terraform workspace select california && terraform destroy --auto-approve -var-file envs/us-west-1/california.tfvars

oregon-destroy: init
		terraform workspace new oregon || terraform workspace select oregon && terraform destroy --auto-approve -var-file envs/us-west-2/oregon.tfvars

london-destroy: init
		terraform workspace new london || terraform workspace select london && terraform destroy --auto-approve -var-file envs/eu-west-2/london.tfvars



destroy: 
		terraform destroy --auto-approve

all: init
		make ohio && make virginia && make california && make oregon && make london

destroy-all: init
		make ohio-destroy && make virginia-destroy && make oregon-destroy && make california-destroy && make london-destroy

cleanup:
		find / -type d -name ".terraform" -exec rm -rf {} \;