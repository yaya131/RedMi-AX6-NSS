#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.199.1/g' package/base-files/files/bin/config_generate

# 修正连接数
sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=65536' package/base-files/files/etc/sysctl.conf


# add mosdns
# git clone https://github.com/sbwml/luci-app-mosdns package/mosdns
# git clone https://github.com/sbwml/v2ray-geodata package/geodata


# themes添加（svn co 命令意思：指定版本如https://github）
# git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom package/luci-theme-infinityfreedom
# git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/luci-theme-opentomcat
# git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git package/luci-theme-atmaterial
# git clone https://github.com/sirpdboy/luci-theme-opentopd.git package/luci-theme-opentopd
# Add luci-theme-argon
# git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon
# git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config
# rm -rf ../lean/luci-theme-argon
# Modify hostname
# sed -i 's/OpenWrt/OpenWrt/g' package/base-files/files/bin/config_generate


# 使用原始最新版本，而不是上游package里面的
# rm -rf ./feeds/luci/applications/luci-app-openclash
# git clone --depth=1 https://github.com/vernesong/OpenClash.git package/luci-app-openclash


# git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
# git clone https://github.com/garypang13/luci-app-bypass package/luci-app-bypass
# git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
# git clone https://github.com/sirpdboy/luci-app-netdata.git package/luci-app-netdata
# git clone https://github.com/kiddin9/luci-app-dnsfilter.git package/luci-app-dnsfilter


#VSSR
# git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
# git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr
# git clone https://github.com/riverscn/openwrt-iptvhelper.git package/openwrt-iptvhelper
# git clone -b luci https://github.com/pexcn/openwrt-chinadns-ng.git package/luci-app-chinadns-ng
