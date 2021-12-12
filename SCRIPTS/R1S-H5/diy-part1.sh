#!/bin/bash
#
# Copyright (c) 2021 F-T-Otaku 
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/F-T-Otaku/Actions-ImmortalWrt-R1S-H5
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
git clone https://github.com/small-5/luci-app-adblock-plus package/luci-app-adblock-plus

if [ ! -d "./package/myapp" ];then
mkdir ./package/myapp
fi
cd ./package/myapp

echo "luci-app-serverchan"
if [ ! -d "./luci-app-serverchan" ];then
git clone https://github.com/tty228/luci-app-serverchan.git
else
cd luci-app-serverchan
git pull
cd ..
fi

echo "luci-app-kcptun"
if [ ! -d "./luci-app-kcptun" ];then
git clone https://github.com/kuoruan/luci-app-kcptun.git package/luci-app-kcptun
else
cd luci-app-kcptun
git pull
cd ..
fi

echo "luci-app-ssr-plus"
if [ ! -d "./luci-app-ssr-plus" ];then
git clone https://github.com/fw876/helloworld.git
cd luci-app-ssr-plus
git pull
cd ..
fi

echo "luci-app-passwall"
if [ ! -d "./luci-app-passwall" ];then
git clone https://github.com/xiaorouji/openwrt-passwall.git
cd luci-app-passwall
git pull
cd ..
fi
# 返回到myapp文件夹
cd ..

pwd
