#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

if [[ "$(whoami)" != "root" ]]
then
	exec sudo "$0"
fi

apt install git
git clone https://github.com/filip-zyzniewski/puppet-workstation.git /etc/puppet
apt install puppet
puppet apply /etc/puppet/manifests/site.pp
