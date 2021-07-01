# Passwall & Openclash
cd ~/ && opkg update && opkg remove dnsmasq && opkg install dnsmasq-full unzip && wget --no-check-certificate "https://github.com/wegare123/Passwall-Openclash/blob/main/passwall-openclash.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && mv ~/xray-plugin /usr/bin/ && chmod +x /usr/bin/xray-plugin && opkg install --force-depends *.ipk && rm -rf *.ipk && rm -rf ekstrak.zip
# Catatan Openclash
Khusus fw openwrt versi 19 kebawah ikuti perintah dibawah ini:
1. install openclash dengan command diatas
2. wget --no-check-certificate "https://downloads.openwrt.org/releases/21.02.0-rc3/packages/aarch64_cortex-a53/packages/libcap-bin_2.43-1_aarch64_cortex-a53.ipk" -O /root/install.ipk && cd /root && opkg install --force-depends install.ipk && rm -rf install.ipk
3. opkg remove --autoremove --force-depends libcap
4. reboot
5. wget --no-check-certificate "https://downloads.openwrt.org/releases/21.02.0-rc3/packages/aarch64_cortex-a53/packages/libcap_2.43-1_aarch64_cortex-a53.ipk" -O /root/install.ipk && cd /root && opkg install --force-depends install.ipk && rm -rf install.ipk
6. Selesai.
</br>
Passwall & Openclash berada di luci > services
