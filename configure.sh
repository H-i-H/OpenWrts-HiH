#!/bin/bash
# Modify default system settings

# 添加passwall
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"

# 添加nikki
echo "src-git nikki https://github.com/nikkinikki-org/OpenWrt-nikki.git;main" >> "feeds.conf.default"

# 设置luci版本为openwrt-24.10
sed -i 's/openwrt-23.05/openwrt-24.10/g' feeds.conf.default
