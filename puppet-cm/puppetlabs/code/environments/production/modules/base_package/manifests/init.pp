class base_package {

     #package { '*':
     #   ensure => 'latest'
     #}

     exec { 'systems_update':
          path => ["/usr/bin", "/usr/sbin", "/bin/bash"],
          command => "/bin/bash -c 'sudo yum update -y'",
          refreshonly => true
     }

     if $::osfamily == 'RedHat' {
        $redhatpackages = ['libxml2','libxml2-devel','libxslt','libxslt-devel','gcc','libffi-devel','make',
                           'openssl-devel','bzip2-devel','java-11-openjdk-devel','java-11-openjdk','vim']
        package { $redhatpackages: ensure => 'installed' }
     } elsif $::osfamily == 'Debian' {
        $debianpackages = ['autoconf','bison','build-essential','libssl-dev','libyaml-dev','libreadline6-dev',
                           'zlib1g-dev','libncurses5-dev','nodejs','python-pip','python-dev','htop','git','libpq-dev',
                           'git-core','libsqlite3-dev','sqlite3','libxml2-dev','libxslt1-dev','libcurl4-openssl-dev',
                           'software-properties-common','libffi-dev','yarn']
        package { $debianpackages: ensure => 'installed' }
     }

}
