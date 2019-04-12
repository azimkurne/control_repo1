
class user_account ($username = 'azimk') {
  user { $username:
    ensure => present,
    uid    => '786',
    shell  => '/bin/bash',
    home   => '/home/$username',
  }
}

node 'master.puppet.vm' {
  class { user_account:}
  file { '/root/README':
   	ensure => file,
  	content => 'This is to test parameterized class with default value',
  }
}
