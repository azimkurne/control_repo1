
class user_account ($username) {
  user { $username:
    ensure => present,
    uid    => '786',
    shell  => '/bin/bash',
    home   => '/home/$username',
  }
}

node 'master.puppet.vm' {
  class { user_account:
    username => 'user1',
  }
  file { '/root/README':
   	ensure => file,
  	content => 'This is to test parameterized class',
  }
}
