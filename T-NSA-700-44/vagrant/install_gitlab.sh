#!/bin/bash


IP=$(hostname -I | awk '{print $2}')

echo "START - install gitlab - "$IP

echo "[1]: install gitlab"
apt-get update -qq >/dev/null
apt-get install -qq -y vim git wget curl git >/dev/null
curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
apt-get update -qq >/dev/null
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
apt install -y gitlab-ce
gitlab-ctl reconfigure
echo "END - install gitlab"

# # Install gitlab-runner/registrer
# apt -y install openssh-server ca-certificates
# curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
# apt install gitlab-ce
# # firewall
# apt install ufw
# ufw enable -y
# ufw allow "WWW Full"
# ufw allow OpenSSH
# ufw allow 3306
# # gitlab configuration
# # Manuellement il faut : 
# #   nano /etc/gitlab/gitlab.rb
# #   Modifie dans :
# #       ## external_url 'http://IP_of_the_vm'
# # gitlab-ctl reconfigure

# # Depencies packages
# apt install apt-transport-https ca-certificates curl gnupg2 software-properties-common -y

# # ADD GPG key Docker
# curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

# # ADD docker repo APT
# # add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
# # ERROR : E: Malformed entry 18 in list file /etc/apt/sources.list (Component)
# #         E: The list of sources could not be read.

# apt update
# curl -sSL https://get.docker.com/ | sh
# apt install docker
# apt install docker-ce

# # Install Gitlab Runner
# curl -LJO "https://gitlab-runner-downloads.s3.amazonaws.com/latest/deb/gitlab-runner_${arch}.deb"
# dpkg -i gitlab-runner_.deb
# curl -L --output /usr/local/bin/gitlab-runner "https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-linux-amd64"
# apt-get install gitlab-runner

# #sudo dpkg-reconfigure locales
