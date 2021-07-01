#!/bin/bash
#passwall&openclash (Wegare)
cd ~/ && opkg update && opkg install unzip
cek2=$(opkg list-installed | grep dnsmasq-full | awk '{print $1}')
if [ $cek2 = "dnsmasq-full" ]; then
echo > /dev/null
else
opkg remove dnsmasq && opkg install dnsmasq-full
fi
wget --no-check-certificate "https://github.com/wegare123/Passwall-Openclash/blob/main/passwall-openclash.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && opkg install --force-depends *.ipk && rm -rf ekstrak.zip
wget --no-check-certificate "https://raw.githubusercontent.com/wegare123/vmt/main/v2ray" -O /usr/bin/v2ray
wget --no-check-certificate "https://raw.githubusercontent.com/wegare123/vmt/main/v2ctl" -O /usr/bin/v2ctl
wget --no-check-certificate "https://raw.githubusercontent.com/wegare123/vmt/main/geoip.dat" -O /usr/bin/geoip.dat
wget --no-check-certificate "https://raw.githubusercontent.com/wegare123/vmt/main/geosite.dat" -O /usr/bin/geosite.dat
wget --no-check-certificate "https://github.com/wegare123/Passwall-Openclash/blob/main/kcptun-client?raw=true" -O /usr/bin/kcptun-client
wget --no-check-certificate "https://github.com/wegare123/Passwall-Openclash/blob/main/brook.ipk?raw=true" -O /root/brook.ipk
mv ~/xray-plugin /usr/bin/
chmod +x /usr/bin/xray-plugin
chmod +x /usr/bin/v2ray
chmod +x /usr/bin/v2ctl
chmod +x /usr/bin/geoip.dat
chmod +x /usr/bin/geosite.dat
chmod +x /usr/bin/kcptun-client
rm -rf *.ipk 
rm -r ~/install.sh
echo "install selesai"


				