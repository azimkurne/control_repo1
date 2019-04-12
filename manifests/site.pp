
class masterclass {
  file { '/tmp/file1.txt':
    ensure  => present,
    content => 'This is file1 for inheritance in puppet class',
  }
}

class subclass inherits masterclass{
  File['/tmp/file1.txt']
  {
    mode => '700',
  }
}

node 'master.puppet.vm' {
  include subclass
  file { '/root/README':
   	ensure => file,
  	content => 'This is to test inheritance in puppet classes',
  }
}
