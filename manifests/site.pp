
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

node 'master.puppet.vm' {
  inlude dev_environment
}
