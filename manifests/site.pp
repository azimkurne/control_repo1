
  class dev_environment {
    file { '/tmp/test.txt':
     ensure => present,
     content => 'v1 Test file',
    }
   package { 'vim':
    ensure => present
   }
  }

node 'master.puppet.vm' {
  include dev_environment
  file { '/root/README':
 	ensure => file,
 	content => 'v1 hello world',
 }
}
