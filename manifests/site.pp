$packages_install = ['vim','git','curl']

node 'master.puppet.vm' {
  package { $packages_install:
   	ensure => installed,
  }
}
