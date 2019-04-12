$filename = "/tmp/variable_test.txt"

node 'master.puppet.vm' {
  file { $filename:
   	ensure => file,
  	content => 'This puppet code is used test the variable declarations.\n',
  }
}
