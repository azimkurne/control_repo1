node 'master.puppet.vm' {
  if $operatingsystem != 'CentOS' {
    warning ("This operating system is not centOS.")
  }
  else {
    notify { "This operating system is ${::operatingsystem}, which is fine.": }  
  }
  
}
