# local develop env initialize shell command

##### yum update all
sudo yum -y update

##### edit resolv.conf
sudo sed -i -e "1i options single-request-reopen" /etc/resolv.conf

##### firewall stop
sudo service iptables stop
sudo chkconfig iptables off

##### install epel
wget https://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
sudo rpm -Uvh epel-release-6-8.noarch.rpm
sudo sed -i -e "s/enabled=1/enabled=0/" /etc/yum.repos.d/epel.repo

##### install remi
#wget http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
#sudo rpm -Uvh remi-release-6.rpm

##### install apach webserver
# sudo yum install -y httpd
# sudo service httpd start
# sudo chkconfig httpd on

##### install PHP
# sudo yum --enablerepo=remi install -y php php-devel php-mysql php-mbstring php-gd
# sudo sed -i -e "s|;error_log = syslog|error_log = /var/log/php.log|" /etc/php.ini
# sudo sed -i -e "s|;mbstring.language = Japanese|mbstring.language = Japanese|" /etc/php.ini
# sudo sed -i -e "s|;mbstring.internal_encoding = EUC-JP|mbstring.internal_encoding = UTF-8|" /etc/php.ini
# sudo sed -i -e "s|;mbstring.http_input = auto|mbstring.http_input = auto|" /etc/php.ini
# sudo sed -i -e "s|;mbstring.detect_order = auto|mbstring.detect_order = auto|" /etc/php.ini
# sudo sed -i -e "s|expose_php = On|expose_php = Off|" /etc/php.ini
# sudo sed -i -e "s|;date.timezone =|date.timezone = Asia/Tokyo|" /etc/php.ini
# sudo service httpd restart
# sudo rm -rf /var/www/html
# sudo ln -fs /vagrant /var/www/html

##### install Mysql
# sudo yum --enablerepo=remi install -y mysql-server
# sudo sed -i -e "4i character_set_server=utf8" /etc/my.cnf
# sudo sed -i -e "5i default-storage-engine=InnoDB" /etc/my.cnf
# sudo sed -i -e "6i innodb_file_per_table" /etc/my.cnf
# sudo sed -i -e "7i [mysql]" /etc/my.cnf
# sudo sed -i -e "8i default-character-set=utf8" /etc/my.cnf
# sudo sed -i -e "9i [mysqldump]" /etc/my.cnf
# sudo sed -i -e "10i default-character-set=utf8" /etc/my.cnf
# sudo service mysqld start
# sudo chkconfig mysqld on
##### TODO manual set root user password #####
## /usr/bin/mysql_secure_installation       ##
##############################################



##### install PostgreSql
# sudo rpm -ivh http://yum.postgresql.org/9.2/redhat/rhel-6-x86_64/pgdg-redhat92-9.2-7.noarch.rpm
# sudo yum install -y postgresql92-server
# sudo service postgresql-9.2 initdb
# sudo service postgresql-9.2 start
# sudo chkconfig postgresql-9.2 on
##### TODO manual set postgres user passowrd #####
## sudo passwd postgres                         ##
##                                              ##
##   MEMO howto login                           ##
## su - postgres                                ##
## psql                                         ##
##################################################


##### install git
# sudo yum install -y git


##### install rubyenv and instal lasted ruby version
# git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
# echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
# echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
# source ~/.bash_profile
# type rbenv
# git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
# rbenv install -v 2.1.5
# rbenv rehash
### changed ruby version
# rbenv global 2.1.5
### show rbenv version
# rbenv versions


##### install ruby on rails
# sudo yum install -y patch
# gem update --system
# gem install rails --no-ri --no-rdoc -V
# rbenv rehash

