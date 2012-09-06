# 
# Class: repositories
#
class repositories {
  yumrepo { "remi-test":
    baseurl  => "http://rpms.famillecollet.com/enterprise/6/test/$architecture/",
    descr    => "Remi Test PHP repository",
    enabled  => 1,
    gpgcheck => 0,
  }
  yumrepo { "epel":
    baseurl  => "http://download.fedoraproject.org/pub/epel/6/$architecture",
    descr    => "Epel repository",
    enabled  => 1,
    gpgcheck => 0,
  }
  yumrepo { "nodejs-stable":
    baseurl  => "http://nodejs.tchol.org/stable/el6/$architecture/",
    descr    => "Node stable",
    enabled  => 1,
    gpgcheck => 0,
  }
}