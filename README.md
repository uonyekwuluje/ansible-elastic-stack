# Ansible Elastic Stack
This Ansible Repo installs Elasticsearch, Kibana and FileBeats. More to Come

### Supported Distributions
* Ubuntu 18 LTS
* CentOS 7

### Network Requirements
* Ports 9200, 9300 and 5601 needs to be open
* SSH and ICMP needs to be open

### Instance Requirements
* One Server for Kibana
* Thress Servers for Elasticsearch

### Setup Instructions
* Ensure you have ansible installed
* Update inventory/hosts.ini with the server names
* Update ansible_users in ansible.cfg. Ensure this user has sudo privilleges

### Setup
```
ansible -m ping elasticstack -o
ansible-playbook site.yml
```

### Test
Loginto one of the nodes and run the following commands to test
```
curl -XGET http://localhost:9200
curl -XGET "http://localhost:9200/_cluster/health?pretty"
curl -XGET "http://localhost:9200/_cluster/health?level=indices&pretty"
curl -XGET http://localhost:9200/_cat/nodes?v
curl -XGET http://localhost:9200/_cat/master?v
curl -XGET http://localhost:9200/_cat/count?v
curl -XGET http://localhost:9200/_cat/shards?v
curl -XGET http://localhost:9200/_cat/allocation?v
curl -X GET 'http://localhost:9200/_cat/indices?v'
```

### Reference Links
* [Elastic Site](https://www.elastic.co/)
* [Elastic Downloads](https://www.elastic.co/downloads/)
* [Elastic Elasticsearch](https://www.elastic.co/downloads/past-releases#elasticsearch)
