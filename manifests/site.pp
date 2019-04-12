node default {
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
}
