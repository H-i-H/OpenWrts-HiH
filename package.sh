# 修改默认主机名
sed -i '/uci commit system/i\uci set system.@system[0].hostname='Router'' package/lean/default-settings/files/zzz-default-settings

# 设置密码为空
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

# 修改默认IP为 11.11.11.100（新版）
sed -i 's/192.168.1.1/11.11.11.100/g' package/base-files/luci2/bin/config_generate

# 加入编译者信息
sed -i "s/OpenWrt /HiH build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings

# 替换默认主题
# rm -rf package/lean/luci-theme-argon 
# git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git  package/lean/luci-theme-argon
rm -rf package/lean/luci-theme-design
git clone -b js https://github.com/gngpp/luci-theme-design.git  package/lean/luci-theme-design

# 修改默认主题新版（需要使用JS版本主题，否则会进不去后台，提示"Unhandled exception during request dispatching"）
# sed -i "s/luci-theme-bootstrap/luci-theme-design/g" feeds/luci/collections/luci-light/Makefile
