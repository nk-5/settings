### リポジトリのインストール

##### yum update all
sudo yum -y update

##### edit resolv.conf
sudo sed -i -e "1i options single-request-reopen" /etc/resolv.conf

##### firewall stop
sudo systemctl firewall stop
sudo systemctl disable firewall

### yum-plugin-priorities
sudo yum -y install yum-plugin-priorities

### priority settings
sudo sed -i '14i priority=1' /etc/yum.repos.d/CentOS-Base.repo
sudo sed -i '23i priority=1' /etc/yum.repos.d/CentOS-Base.repo
sudo sed -i '32i priority=1' /etc/yum.repos.d/CentOS-Base.repo
 
### RPMforge
sudo rpm --import http://apt.sw.be/RPM-GPG-KEY.dag.txt
sudo rpm -ivh http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el7.rf.x86_64.rpm
sudo rpm -q rpmforge-release

### EPEL
sudo yum -y install epel-release

### Remi
sudo rpm --import http://rpms.famillecollet.com/RPM-GPG-KEY-remi
sudo rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm

### ELRepo
sudo rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
sudo rpm -ivh http://www.elrepo.org/elrepo-release-7.0-2.el7.elrepo.noarch.rpm

## SELinuxの無効化
setenforce 0
sudo sed -i -e "s/SELINUX=enforcing/SELINUX=disabled/" /etc/sysconfig/selinux

## 文字コードの変更 UTF-8に変更
localectl set-locale LANG=ja_JP.UTF-8 
