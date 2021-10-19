#!/bin/bash
#passwall (Wegare)
cd ~/ && opkg update && opkg install unzip
cek2=$(opkg list-installed | grep dnsmasq-full | awk '{print $1}')
if [ $cek2 = "dnsmasq-full" ]; then
echo > /dev/null
else
opkg remove dnsmasq && opkg install dnsmasq-full
fi
mkdir -p /usr/share/xray/
mkdir -p /usr/share/v2ray/
wget --no-check-certificate "https://github.com/wegare123/Passwall-Openclash-SSRplus/blob/main/kcptun-client?raw=true" -O /usr/bin/kcptun-client
wget --no-check-certificate "https://github.com/wegare123/Passwall-Openclash-SSRplus/blob/main/passwall-openclash.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && rm -rf ekstrak.zip
wget --no-check-certificate "https://github.com/wegare123/Passwall-Openclash-SSRplus/blob/main/ssrplus.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && rm -rf ekstrak.zip
wget --no-check-certificate "https://raw.githubusercontent.com/wegare123/vmt/main/v2ray" -O /usr/bin/v2ray
wget --no-check-certificate "https://raw.githubusercontent.com/wegare123/vmt/main/v2ctl" -O /usr/bin/v2ctl
wget --no-check-certificate "https://github.com/wegare123/vless/blob/main/xray?raw=true" -O /usr/bin/xray
wget --no-check-certificate "https://raw.githubusercontent.com/wegare123/vmt/main/geoip.dat" -O /usr/share/xray/geoip.dat
wget --no-check-certificate "https://raw.githubusercontent.com/wegare123/vmt/main/geosite.dat" -O /usr/share/xray/geosite.dat
wget --no-check-certificate "https://raw.githubusercontent.com/wegare123/vmt/main/geoip.dat" -O /usr/share/v2ray/geoip.dat
wget --no-check-certificate "https://raw.githubusercontent.com/wegare123/vmt/main/geosite.dat" -O /usr/share/v2ray/geosite.dat
cek=$(opkg install libcap-bin | grep 'Cannot install package libcap-bin.')
if [[ -z $cek ]]; then
opkg remove --force-depends libcap
wget --no-check-certificate "https://downloads.openwrt.org/releases/21.02.0-rc3/packages/aarch64_cortex-a53/packages/libcap_2.43-1_aarch64_cortex-a53.ipk" -O /root/install.ipk && cd /root && opkg install --force-depends --force-overwrite install.ipk && rm -rf install.ipk
wget --no-check-certificate "https://downloads.openwrt.org/releases/21.02.0-rc3/packages/aarch64_cortex-a53/packages/libcap-bin_2.43-1_aarch64_cortex-a53.ipk" -O /root/install.ipk && cd /root && opkg install --force-depends --force-overwrite install.ipk && rm -rf install.ipk
else
echo > /dev/null
fi
ssr=$(cat /etc/openwrt_r* | grep -i RELEASE | cut -d= -f2 | cut -d"'" -f2 | cut -d. -f1)
if [ "$ssr" = "19" ]; then
wget --no-check-certificate "https://github.com/wegare123/ssrt/blob/main/shadowsocksr-libev_1-0-0-wegare_aarch64_cortex-a53.ipk?raw=true" -O ~/ssr-libev.ipk
elif [ "$ssr" = "18" ]; then
wget --no-check-certificate "https://github.com/wegare123/ssrt/blob/main/shadowsocksr-libev_2.5.6-5_aarch64_cortex-a53.ipk?raw=true" -O ~/ssr-libev.ipk
else
echo "frimware versi yang anda gunakan tidak terdeteksi silahkan install sendiri shadowsocksr-libev nya"
fi
opkg remove --force-depends libevent2-7 && opkg install haproxy && opkg install --force-depends *.ipk
mv ~/xray-plugin /usr/bin/
chmod +x /usr/bin/xray-plugin
chmod +x /usr/bin/v2ray
chmod +x /usr/bin/v2ctl
chmod +x /usr/bin/xray
chmod +x /usr/share/v2ray/geoip.dat
chmod +x /usr/share/v2ray/geosite.dat
chmod +x /usr/share/xray/geoip.dat
chmod +x /usr/share/xray/geosite.dat
chmod +x /usr/bin/kcptun-client
/etc/init.d/passwall disable
/etc/init.d/openclash disable
/etc/init.d/haproxy disable
/etc/init.d/redsocks2 disable
/etc/init.d/shadowsocksr disable
rm -rf *.ipk 
rm -r ~/install.sh
wget --no-check-certificate "https://github.com/wegare123/Passwall-Openclash-SSRplus/blob/main/clash?raw=true" -O /etc/openclash/core/clash
wget --no-check-certificate "https://github.com/wegare123/Passwall-Openclash-SSRplus/blob/main/clash_tun?raw=true" -O /etc/openclash/core/clash_tun
wget --no-check-certificate "https://github.com/wegare123/Passwall-Openclash-SSRplus/blob/main/clash_game?raw=true" -O /etc/openclash/core/clash_game
wget --no-check-certificate "https://raw.githubusercontent.com/wegare123/Passwall-Openclash-SSRplus/main/myip.htm" -O /usr/lib/lua/luci/view/openclash/myip.htm
wget --no-check-certificate "https://raw.githubusercontent.com/wegare123/Passwall-Openclash-SSRplus/main/developer.htm" -O /usr/lib/lua/luci/view/openclash/developer.htm
echo "install selesai"
echo "silahkan reboot"
Noh buat yg pke openclash di FW pak wegare, pindahin ke usr/lib/lua/luci/view/openclash

				