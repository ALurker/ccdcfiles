cd /tmp
wget http://download.fedoraproject.org/pub/epel/5/i386/epel-release-5-4.noarch.rpm
rpm -ivh epel-release-5-4.noarch.rpm
cd
yum install shorewall
wget wget http://prdownloads.sourceforge.net/webadmin/webmin-1.780-1.noarch.rpm

yum -y install perl perl-net-ssleay openssl perl-io-tty

rpm -U webmin-1.780-1.noarch.rpm

#iptables -N TCP
#iptables -N UDP
#iptables -P FORWARD DROP
#iptables -P INPUT DROP
#iptables -P OUTPUT DROP
#iptables -A INPUT -m conntrack --ctstate NEW,RELATED,ESTABLISHED -j ACCEPT
#iptables -A INPUT -i lo -j ACCEPT
#iptables -A INPUT -m conntrack --ctstate INVALID -j DROP
#iptables -A INPUT -p icmp --icmp-type 8 -m conntrack --ctstate NEW -j ACCEPT
#iptables -A INPUT -p udp -m conntrack --ctstate NEW -j UDP
#iptables -A INPUT -p tcp --syn -m conntrack --ctstate NEW -j TCP
#iptables -A TCP -p tcp --dport 80 -j ACCEPT
#iptables -A TCP -p tcp --dport 443 -j ACCEPT
#iptables -A OUTPUT -p tcp --dport 80 -j ACCEPT
#iptables -A OUTPUT -p tcp --dport 443 -j ACCEPT
#service iptables save
