node "kibanaserver" { 
   include base_package
   include kibana
}

node /^elasticnode0[1-3]/ { 
   include base_package
   include elasticsearch
}
