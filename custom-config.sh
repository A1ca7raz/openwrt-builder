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
sed -i 's/192.168.1.1/192.168.0.1/g' package/base-files/files/bin/config_generate

#Fix NAT Loopback
# sed -i "/exit 0/i\echo 'net.bridge.bridge-nf-call-arptables=0' >> /etc/sysctl.conf\necho 'net.bridge.bridge-nf-call-ip6tables=0' >> /etc/sysctl.conf\necho 'net.bridge.bridge-nf-call-iptables=0' >> /etc/sysctl.conf" package/lean/default-settings/files/zzz-default-settings

# Modify default theme
# sed -i "/exit 0/i\sed -i 's/option mediaurlbase .\\\/luci-static\\\/bootstrap./option mediaurlbase \\\'\\\/luci-static\\\/argon\\\'/g' /etc/config/luci" package/lean/default-settings/files/zzz-default-settings
