
# Setup basics for CentOS

    curl -O https://raw.github.com/gist/3652513/centos.setup.basics.sh && sh centos.setup.basics.sh

# How to run manually

    puppet apply manifests/node.dns.pp --modulepath=modules

    