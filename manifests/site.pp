node 'master.puppet.vm' {
  if $operatingsystem != 'CenteOS' {
    warning ("This operating system is not centOS.")
    notify { "This operating system is ${::operatingsystem}.": }  
  }
  else {
    notify { "This operating system is ${::operatingsystem}, which is fine.": }  
  }
  
}
