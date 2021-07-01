#!/bin/bash
#passwall&openclash (Wegare)
cd ~/ && opkg update && opkg install unzip
cek2=$(opkg list-installed | grep dnsmasq-full | awk '{print $1}')
if [ $cek2 = "dnsmasq-full" ]; then
echo > /dev/null
else
opkg remove dnsmasq && opkg install dnsmasq-full
fi
wget --no-check-certificate "https://github.com/wegare123/Passwall-Openclash/blob/main/passwall-openclash.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && opkg install --force-depends *.ipk && rm -rf *.ipk && rm -rf ekstrak.zip
mv ~/xray-plugin /usr/bin/
mv ~/v2ray /usr/bin/
mv ~/v2ctl /usr/bin/
mv ~/geoip.dat /usr/bin/
mv ~/geosite.dat /usr/bin/
chmod +x /usr/bin/xray-plugin
chmod +x /usr/bin/v2ray
chmod +x /usr/bin/v2ctl
chmod +x /usr/bin/geoip.dat
chmod +x /usr/bin/geosite.dat
echo "install selesai"


				