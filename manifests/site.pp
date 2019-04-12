
class dev_environment {
  file { '/tmp/dev.txt':
    ensure  => present,
    content => 'This is dev class for Nested Class example',
  }
  package { 'vim':
    ensure => present
  }
}

class stage_environment{
  include dev_environment
  file { '/tmp/stage.txt':
    ensure  => present,
    content => 'This is stage class for Nexted Class example'
  }
}

node 'master.puppet.vm' {
  include dev_environment
  file { '/root/README':
 	ensure => file,
 	content => 'v1 hello world',
 }
}
