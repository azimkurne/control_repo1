node 'master.puppet.vm' {
  if $operatingsystem != 'CentOS' {
    warning ("This operating system is not centOS.")  }
  else {
    notify { "IfElse: This operating system is ${::operatingsystem}, which is fine.": }  
  }
  
  case $operatingsystem {
    debian, ubuntu: {
      notify { "Case: This operating system is ${::operatingsystem}": } 
    }
    centos, redhat: {
      notify { "Case: This operating system is ${::operatingsystem}": } 
    }
  }
}
