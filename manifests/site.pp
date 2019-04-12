
class masterclass {
  file { '/tmp/file1.txt':
    ensure  => present,
    content => 'This is file1 for inheritance in puppet class',
  }
}

class subclass {
  File['/tmp/file1']
  {
    mode => '700',
  }
}

node 'master.puppet.vm' {
  include masterclass
  include subclass
  file { '/root/README':
   	ensure => file,
  	content => 'This is to test inheritance in puppet classes',
  }
}
