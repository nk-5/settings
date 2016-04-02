### httpd インストール
sudo yum -y install httpd
sudo systemctl start httpd
sudo systemctl enable httpd

### Varnish4 インストール
sudo yum -y install varnish
#sudo systemctl start varnish
#sudo systemctl enable varnish
#sudo systemctl restart httpd

### PHP5.6 インストール
sudo yum install -y --enablerepo=remi-php56 php php-cli php-common php-devel php-pdo php-xml php-mbstring php-mysqlnd php-pecl-memcached php-pecl-xdebug php-opcache php-mcrypt

### MySQL インストール
sudo yum install -y http://dev.mysql.com/get/Downloads/MySQL-5.6/MySQL-devel-5.6.27-1.linux_glibc2.5.x86_64.rpm http://dev.mysql.com/get/Downloads/MySQL-5.6/MySQL-server-5.6.27-1.linux_glibc2.5.x86_64.rpm http://dev.mysql.com/get/Downloads/MySQL-5.6/MySQL-shared-5.6.27-1.linux_glibc2.5.x86_64.rpm http://dev.mysql.com/get/Downloads/MySQL-5.6/MySQL-shared-compat-5.6.27-1.linux_glibc2.5.x86_64.rpm http://dev.mysql.com/get/Downloads/MySQL-5.6/MySQL-client-5.6.27-1.linux_glibc2.5.x86_64.rpm

sudo systemctl enable mysql
sudo systemctl start mysql

### Memcached インストール
sudo yum install --enablerepo=remi -y memcached
#sudo systemctl enable memcached

