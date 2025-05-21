#!/bin/bash
# Modify default system settings

# nikki 需要配合Firewall4
echo "src-git nikki https://github.com/nikkinikki-org/OpenWrt-nikki.git;main" >> "feeds.conf.default"

# Hello World
# echo 'src-git helloworld https://github.com/fw876/helloworld' >> "feeds.conf.default"

# passwall
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"
# echo "src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git;main" >> "feeds.conf.default"
