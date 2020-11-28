node 'elasticnode03.home' {

   file { ['/var/save/','/var/save/puppet_hello']: 
             ensure => 'directory', 
             mode   => '0755',    
   }

   exec { 'systems':
          command => "/bin/bash -c 'echo Hello Puppet > /tmp/will.txt'",
    }

}
