export VAGRANT_VAGRANTFILE=./testing/Vagrantfile

.PHONY: test
test:
	vagrant up
	ansible-playbook playbooks/main-test.yaml -i inventory/hosts
	vagrant destroy --force
	
.PHONY: run
run:
	ansible-playbook playbooks/main.yaml -i inventory/hosts
