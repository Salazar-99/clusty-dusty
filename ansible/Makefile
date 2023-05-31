export VAGRANT_VAGRANTFILE=./testing/Vagrantfile
# TODO: Figure out how to check if vagrant vms are running before running vagrant up
.PHONY: test
test:
	ansible-playbook playbooks/main-test.yaml -i inventory/hosts
	
.PHONY: run
run:
	ansible-playbook playbooks/main.yaml -i inventory/hosts

.PHONY: destroy
destroy:
	ansible-playbook playbooks/destroy.yaml -i inventory/hosts
