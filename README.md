# Passwall
opkg update && wget --no-check-certificate "https://github.com/wegare123/Passwall-Openclash/blob/main/luci-app-passwall_3.6-40_all.ipk?raw=true" -O /root/install.ipk && cd /root && opkg install --force-depends install.ipk && rm -rf install.ipk
# Openclash
opkg update && wget --no-check-certificate "https://github.com/wegare123/Passwall-Openclash/blob/main/luci-app-openclash_0.42.06-beta_all.ipk?raw=true" -O /root/install.ipk && cd /root && opkg install --force-depends install.ipk && rm -rf install.ipk
# Catatan Openclash
Khusus fw openwrt versi 19 kebawah ikuti perintah dibawah ini:
1. install openclash
2. opkg remove --autoremove --force-depends libcap
3. reboot
4 
