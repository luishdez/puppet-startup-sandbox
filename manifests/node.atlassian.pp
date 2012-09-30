#
# node.atlassian.pp
#
node 'default' {

  include repositories
  include basic

  Exec { path => [
    "/usr/local/bin/",
    "/usr/bin/",
    "/bin/" ,
    "/usr/local/sbin/",
    "/usr/sbin/",
    "/sbin/" ]}

  java::setup {'java-setup': }

  atlassian::jira::setup {'atlassian-jira-setup': }



  # atlassian::confluence::setup {'atlassian-jira-setup':
  #   firewall => 'iptables'
  # }

}