# Ansible Prometheus
Ansible Prometheus Configs

## Test Stack
```
ansible -m ping prom_stack -v -o
ansible-playbook playbooks/main.yml
```

## Test
To test your configs, visit the URL `http://192.168.1.11:9090`. *Note: Substitute your IP*
![Prometheus](img/prometheus.png)
