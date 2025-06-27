#!/bin/bash
# 添加锐捷网络 Mentohust
git clone https://github.com/sbwml/luci-app-mentohust package/mentohust

# 添加主题 luci-theme-alpha
git clone https://github.com/derisamedia/luci-theme-alpha.git package/feeds/luci/luci-theme-alpha

# 修改默认IP为11.11.11.1
sed -i 's/192.168.1.1/11.11.11.1/g' package/base-files/luci2/bin/config_generate
sed -i 's/192.168.1.1/11.11.11.1/g' package/base-files/files/bin/config_generate

# 修改默认名称为Router
sed -i '/uci commit system/i\uci set system.@system[0].hostname='Router'' package/lean/default-settings/files/zzz-default-settings

# 添加编译者信息H-i-H
sed -i "s/LEDE/H-i-H build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings

# 设置为无密码
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings
