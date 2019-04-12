node 'master.puppet.vm' {
  notify { 'This is just to notify ${::operatingsystem}': }
}
