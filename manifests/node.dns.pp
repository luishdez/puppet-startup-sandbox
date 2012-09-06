#
# node.dns.pp
#
node 'default' {

  include repositories
  include basic
  
  bind::setup {'bind_setup':
    firewall => 'iptables'
  }
  
  webmin::setup {'webmin_setup':
    firewall => 'iptables'
  }
}