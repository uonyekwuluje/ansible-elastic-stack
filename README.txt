&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& KUBERNETES STACK &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
# Kubernetes Stack
ansible -m ping k3s_stack -v -o
ansible-playbook playbooks/k3s/main.yml
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& GITHUB ACTIONS STACK &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
# https://github.com/actions/runner/releases/
ansible -m ping actions_runner -v -o
ansible-playbook playbooks/github-actions/main.yml
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
