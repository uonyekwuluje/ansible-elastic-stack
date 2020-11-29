# Ansible Elastic Stack | Version 7.10.0
This Ansible Repo installs Elasticsearch, Kibana and FileBeats. More to Come

### Setup Multi Node
```
ansible -m ping elasticstack -o
ansible -m shell -a "sudo reboot" elasticstack -v -o
ansible-playbook playbook/elastic/elastic-stack.yml
```
### Setup Single Node
```
ansible -m ping elksingle -o
ansible -m shell -a "sudo reboot" elksingle -v -o
ansible-playbook playbook/elastic/elksingle-node.yml
```
###  Web UI
Open your browser and type
```
http://<kibana public ip>:5601
```
***note: The default as is is not secure. For production use, enable xpack, configured SSL and handle requests securely***
