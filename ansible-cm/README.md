# Ansible Elastic Stack | Version 7.10.0
Ansible Elasticsearch, Kibana and FileBeats. More to Come

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
<br>

# Cassandra 4.X
Ansible Cassandra Cluster

### Setup Multi Node
```
ansible -m ping cassandra -o
ansible -m shell -a "sudo reboot" cassandra -v -o
ansible-playbook playbook/cassandra/main.yml
```
### Setup Single Node
```
ansible -m ping cassandraone -o
ansible -m shell -a "sudo reboot" cassandraone -v -o
ansible-playbook playbook/cassandra/cassandra-one.yml
```
