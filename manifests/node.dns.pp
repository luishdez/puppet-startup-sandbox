#
# node.dns.pp
#
node 'default' {

  include repositories
  include basic
  
  bind::setup {'bind_setup':
    firewall => 'iptables',
    customConf => {
      'options' => {
        'listen-on port 53' => {'any' => '','192.168.100.200' => '','192.168.100.201' => ''},
        'allow-transfer'    => {'any' => '','192.168.100.200' => '','192.168.100.201' => ''},
        'also-notify'       => {'192.168.100.201' => ''}, 
        'allow-notify'      => {'192.168.100.201' => ''} 
      }
    }
  }
  
  webmin::setup {'webmin_setup':
    firewall => 'iptables'
  }
}