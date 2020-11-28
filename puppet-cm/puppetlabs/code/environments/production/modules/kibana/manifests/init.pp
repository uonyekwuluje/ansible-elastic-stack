class kibana {
   $kibana_rpm = lookup("kibana_url")
   $elasticsearch_rpm = lookup("elasticsearch::server::elasticsearch_url")
   $elastic_servers = lookup("elastic_server_stack")
   $cluster_name = lookup("elasticsearch_cluster_name")

   package { 'kibana':
      provider  => 'rpm',
      ensure    => installed,
      source    => "${kibana_rpm}"
   }

   package { 'elasticsearch':
      provider  => 'rpm',
      ensure    => installed,
      source    => "${elasticsearch_rpm}"
   }

   file { 'configuration-file':
      path    => '/etc/elasticsearch/jvm.options',
      ensure  => file,
      source  => 'puppet:///modules/kibana/jvm.options',
   }

   file { "/etc/kibana/kibana.yml":
      ensure  => file,
      content  => template('kibana/kibana.yml.erb'),
   }

   file { "/etc/elasticsearch/elasticsearch.yml":
      ensure  => file,
      content  => template('kibana/elasticsearch.yml.erb'),
   }

   service { 'kibana':
      ensure => 'running',
      enable => true,
      restart => true,
   }

   service { 'elasticsearch':
      ensure => 'running',
      enable => true,
      restart => true,
   }

}
