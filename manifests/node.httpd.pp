#
# node.httpd.pp
#
node 'default' {

  include repositories
  include basic

  webmin::setup {'webmin_setup':
    firewall => 'iptables'
  }
}