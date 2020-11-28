class elasticsearch {
   $elasticsearch_rpm = lookup("elasticsearch::server::elasticsearch_url")
   $elastic_servers = lookup("elastic_server_stack")
   $cluster_name = lookup("elasticsearch_cluster_name")

   package { 'elasticsearch':
      provider  => 'rpm',
      ensure    => installed,
      source    => "${elasticsearch_rpm}"
   }

   file { 'configuration-file':
      path    => '/etc/elasticsearch/jvm.options',
      ensure  => file,
      source  => 'puppet:///modules/elasticsearch/jvm.options',
   }

   file { "/etc/elasticsearch/elasticsearch.yml":
      ensure  => file,
      content  => template('elasticsearch/elasticsearch.yml.erb'),
   }

   service { 'elasticsearch':
      ensure => 'running',
      enable => true,
      restart => true,
   }

}
