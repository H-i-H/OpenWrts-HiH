#!/bin/bash
# Modify default system settings

# 添加passwall
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"

# 设置luci版本为openwrt-24.10
sed -i 's/openwrt-23.05/openwrt-24.10/g' feeds.conf.default

# 修改默认IP为11.11.11.10
sed -i 's/192.168.1.1/11.11.11.10/g' package/base-files/luci2/bin/config_generate
sed -i 's/192.168.1.1/11.11.11.10/g' package/base-files/files/bin/config_generate

# 修改默认主题为luci-theme-design
sed -i "s/luci-theme-bootstrap/luci-theme-design/g" feeds/luci/collections/luci/Makefile
sed -i "s/luci-theme-bootstrap/luci-theme-design/g" feeds/luci/collections/luci-light/Makefile

# 修改默认名称为HiH
sed -i '/uci commit system/i\uci set system.@system[0].hostname='HiH'' package/lean/default-settings/files/zzz-default-settings

# 添加编译者信息HiH
sed -i "s/LEDE/HiH build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings

# 设置为无密码
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings
