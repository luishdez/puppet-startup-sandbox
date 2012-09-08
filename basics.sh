# Isntall basics for centOS
# curl -O https://raw.github.com/gist/3652513/centos.setup.basics.sh && sh centos.setup.basics.sh

ulimit -s 26384
yum install -y make gcc openssl openssl-devel vim wget
yum install -y ruby ruby-libs ruby-devel ruby-rdoc rubygems git
git clone git://github.com/aggressivex/puppet-startup-sandbox.git /root/puppet
gem install rails librarian-puppet puppet