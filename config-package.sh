#!/bin/bash
# 添加锐捷网络 Mentohust
git clone https://github.com/sbwml/luci-app-mentohust package/mentohust

# 添加主题 luci-theme-alpha
git clone https://github.com/derisamedia/luci-theme-alpha.git package/feeds/luci/luci-theme-alpha

# 修改默认IP为192.168.111.1
sed -i 's/192.168.1.1/192.168.111.1/g' package/base-files/luci2/bin/config_generate
sed -i 's/192.168.1.1/192.168.111.1/g' package/base-files/files/bin/config_generate

# 修改子网掩码为255.255.0.0
sed -i 's/255.255.255.0/255.255.0.0/g' package/base-files/luci2/bin/config_generate
sed -i 's/255.255.255.0/255.255.0.0/g' package/base-files/files/bin/config_generate

# 修改默认主题为luci-theme-alpha
sed -i "s/luci-theme-bootstrap/luci-theme-alpha/g" feeds/luci/collections/luci/Makefile
sed -i "s/luci-theme-bootstrap/luci-theme-alpha/g" feeds/luci/collections/luci-light/Makefile

# 修改默认名称为Router
sed -i '/uci commit system/i\uci set system.@system[0].hostname='Router'' package/lean/default-settings/files/zzz-default-settings

# 添加编译者信息H-i-H
sed -i "s/LEDE/H-i-H build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings

# 设置为无密码
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings
