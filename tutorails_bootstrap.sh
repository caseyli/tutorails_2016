# basic support tools
sudo apt-get update
sudo apt-get install -y build-essential git curl libxslt1-dev libxml2-dev libssl-dev

# rvm
su - vagrant -c 'curl -sSL https://get.rvm.io | bash'
su - vagrant -c 'rvm rvmrc warning ignore allGemfiles'

# ruby
su - vagrant -c 'rvm install 2.2.4'

# rails
su - vagrant -c 'gem install rails -v 4.2 --no-doc'

# node
su - vagrant -c 'curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash'
echo "source /home/vagrant/.nvm/nvm.sh" >> /home/vagrant/.profile
source /home/vagrant/.profile
su - vagrant -c 'nvm install 4.2'
su - vagrant -c 'nvm alias default 4.2'
