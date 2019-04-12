
  class dev_environment {
    user { 'grace':
     ensure => present,
     manage_home => true,
     group => ['wheel'],
    }
   package { 'vim':
    ensure => present
   }
  }

node default {
  include dev_environment
  file { '/root/README':
 	ensure => file,
 	content => 'v1 hello world',
 }
}
