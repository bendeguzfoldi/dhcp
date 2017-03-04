#sudo apt -y install isc-dhcp-server
cd /etc/dhcp
rm dhcpd.conf
echo -e "# minimal sample /etc/dhcp/dhcpd.conf 
\ndefault-lease-time 600;
\nmax-lease-time 7200;
\nsubnet $1 netmask $2 {
\nrange $3 $4;
\noption routers $5; 
\noption domain-name-servers $6, $7;
" >> dhcpfile
sudo systemctl restart isc-dhcp-server.service
