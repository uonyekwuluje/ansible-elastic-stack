# Puppet Modules and Setup
To use this setup
* Setup your puppet server and copy contents of ```puppetlabs``` into ```/etc/puppetlabs/```
* Production Path is ```/etc/puppetlabs/code/environments/production```
* Update your site manifest ```/etc/puppetlabs/code/environments/production/manifests/site.pp```
* Update or create new modules ```/etc/puppetlabs/code/environments/production/modules```
* Update Global Production variables in ```/etc/puppetlabs/code/environments/production/data```. 
  - Ensure new entries are made first in ```/etc/puppetlabs/code/environments/production/hiera.yaml```

# Testing out puppet
On the affected agents
* run ```sudo /opt/puppetlabs/bin/puppet agent --test``` to deploy/update
  - Perform a dry run ```sudo /opt/puppetlabs/bin/puppet agent --test --noop```
  - Perform a dry run in specific environment ```sudo /opt/puppetlabs/bin/puppet agent --environment=testing --test --noop```



# References
* [Directories & Structure](https://puppet.com/blog/magic-directories-guide-to-puppet-directory-structure/)

