# Installation

git clone https://github.com/AdilMektoub/CI-CD-laravel-angular-mySQL.git

sudo apt install ansible

sudo apt install vagrant

sudo apt install virtualbox-qt

cd T-NSA-700-44/vagrant

# création des VMS Debian les meilleurs après RedHat
vagrant up


# Lancement des playbook ansible pour executé les recettes/rôles
cd .. && cd ansible

ansible-playbook -i inventory.yml playbook.yml



