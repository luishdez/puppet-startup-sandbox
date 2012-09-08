#
# node.dns.pp
#
node 'default' {

  include "common.repositories"
  include "common.basic"
  
  bind::setup {'bind_setup':
    firewall => 'iptables'
  }
  
  webmin::setup {'webmin_setup':
    firewall => 'iptables'
  }
}