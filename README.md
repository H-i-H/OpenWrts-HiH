# Action Openwrt 云自动编译
⏰ **每周自动拉取最新源码自动编译**

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

<br />

<p align="center">
  <a href="https://github.com/H-i-H/OpenWrts-HiH">
    <img src="./assets/images/action1.jpg" alt="Logo" width="500" />
  </a>
  <h3 align="center">Openwrt/LEDE 云编译(带应用商店)</h3>
  <p align="center">
    👉 自动拉取Openwrt最新源码编译，自动发布到 [<a herf="https://github.com/H-i-H/OpenWrts-HiH/releases"> Releases </a>]👈
    <br />
    <a href="https://github.com/H-i-H/OpenWrts-HiH"><strong>探索本项目的文档 »</strong></a>
    <br />
    <br />
    <a href="https://github.com/H-i-H/OpenWrts-HiH/releases">下载地址</a>
    ·
    <a href="https://github.com/H-i-H/OpenWrts-HiH/actions">Action</a>
    ·
    <a href="https://github.com/H-i-H/OpenWrts-HiH/issues">提出新特性</a>
  </p>

</p>

## 目录

- [Action Openwrt 云自动编译](#action-openwrt-云自动编译)
  - [目录](#目录)
  - [支持的设备](#支持的设备)
    - [🎯固件默认设置](#固件默认设置)
  - [固件特性](#固件特性)
  - [自带插件](#自带插件)
  - [文件目录说明](#文件目录说明)
  - [定制固件](#定制固件)
    - [注意事项](#注意事项)
  - [固件预览](#固件预览)
  - [版权说明](#版权说明)
  - [项目支持](#项目支持)
  - [Stargazers over time](#stargazers-over-time)

<br>


## 支持的设备
🎯 带应用商店的固件：`x86Lite`
|           支持的设备        |         固类别         |        Action         |            状态          |              下载页          |
| :------------------------: | :---------------------: | :-------------------: | :-------------------: | :--------------------------: |
|             x86_64                    |  [LEDE](https://github.com/coolsnowwolf/lede) |[🍕](https://github.com/H-i-H/OpenWrts-HiH/actions/workflows/x86_64.yml) | ![x86_64](https://github.com/H-i-H/OpenWrts-HiH/actions/workflows/x86_64.yml/badge.svg) |  [✔](https://github.com/H-i-H/OpenWrts-HiH/releases) |
| x86_64Lite | [LEDE](https://github.com/coolsnowwolf/lede) |[🍕](https://github.com/H-i-H/OpenWrts-HiH/actions/workflows/x86_64Lite.yml) | ![x86_64Lite](https://github.com/H-i-H/OpenWrts-HiH/actions/workflows/x86_64Lite.yml/badge.svg) | [✔](https://github.com/H-i-H/OpenWrts-HiH/releases) |
|             树莓派 3B/3B+             | [LEDE](https://github.com/coolsnowwolf/lede) | [🍕](https://github.com/H-i-H/OpenWrts-HiH/actions/workflows/RaspberryPi3.yml) | ![RaspberryPi3](https://github.com/H-i-H/OpenWrts-HiH/actions/workflows/RaspberryPi3.yml/badge.svg) | [✔](https://github.com/H-i-H/OpenWrts-HiH/releases) |
|             树莓派 4B             |  [LEDE](https://github.com/coolsnowwolf/lede) | [🍕](https://github.com/H-i-H/OpenWrts-HiH/actions/workflows/RaspberryPi4.yml) | ![RaspberryPi4](https://github.com/H-i-H/OpenWrts-HiH/actions/workflows/RaspberryPi4.yml/badge.svg) |  [✔](https://github.com/H-i-H/OpenWrts-HiH/releases) |
|             树莓派 5             |  [LEDE](https://github.com/coolsnowwolf/lede) | [🍕](https://github.com/H-i-H/OpenWrts-HiH/actions/workflows/RaspberryPi5.yml) | ![RaspberryPi5](https://github.com/H-i-H/OpenWrts-HiH/actions/workflows/RaspberryPi5.yml/badge.svg) |  [✔](https://github.com/H-i-H/OpenWrts-HiH/releases) |
|             NanoPi R2S             |  [LEDE](https://github.com/coolsnowwolf/lede) | [🍕](https://github.com/H-i-H/OpenWrts-HiH/actions/workflows/Rockchip.yml) | ![R2S](https://github.com/H-i-H/OpenWrts-HiH/actions/workflows/Rockchip.yml/badge.svg) | [✔](https://github.com/H-i-H/OpenWrts-HiH/releases) |
|             NanoPi R4S             |  [LEDE](https://github.com/coolsnowwolf/lede) | [🍕](https://github.com/H-i-H/OpenWrts-HiH/actions/workflows/Rockchip.yml) | ![R4S](https://github.com/H-i-H/OpenWrts-HiH/actions/workflows/Rockchip.yml/badge.svg) | [✔](https://github.com/H-i-H/OpenWrts-HiH/releases) |
|             NanoPi R5C             |  [LEDE](https://github.com/coolsnowwolf/lede) | [🍕](https://github.com/H-i-H/OpenWrts-HiH/actions/workflows/Rockchip.yml) | ![R5C](https://github.com/H-i-H/OpenWrts-HiH/actions/workflows/Rockchip.yml/badge.svg) | [✔](https://github.com/H-i-H/OpenWrts-HiH/releases) |
|             NanoPi R5S             |  [LEDE](https://github.com/coolsnowwolf/lede) | [🍕](https://github.com/H-i-H/OpenWrts-HiH/actions/workflows/Rockchip.yml) | ![R5S](https://github.com/H-i-H/OpenWrts-HiH/actions/workflows/Rockchip.yml/badge.svg) | [✔](https://github.com/H-i-H/OpenWrts-HiH/releases) |
|             FastRhino R68S             |  [LEDE](https://github.com/coolsnowwolf/lede) | [🍕](https://github.com/H-i-H/OpenWrts-HiH/actions/workflows/Rockchip.yml) | ![R68S](https://github.com/H-i-H/OpenWrts-HiH/actions/workflows/Rockchip.yml/badge.svg) | [✔](https://github.com/H-i-H/OpenWrts-HiH/releases) |
|             Orange Pi R1 Plus             |  [LEDE](https://github.com/coolsnowwolf/lede) | [🍕](https://github.com/H-i-H/OpenWrts-HiH/actions/workflows/Rockchip.yml) | ![OrangePiR1](https://github.com/H-i-H/OpenWrts-HiH/actions/workflows/Rockchip.yml/badge.svg) | [✔](https://github.com/H-i-H/OpenWrts-HiH/releases) |

<br>

### 🎯固件默认设置
- 路由器地址: `192.168.10.1`
- 默认用户名: `root`
- 默认密码  : `password`

<br>

## 固件特性
⏰ 固件编译改为`周更`(稳定为主，减少资源浪费)

✨ iStore应用商店 [AppStore](./assets/images/appstore.png)

✨ 自带常用的插件

✨ Arm集成所有openwrt的USB驱动

✨ ~~集成Python3.x(带pip)环境~~

✨ 集成Docker-CE

✨ ~~集成Node.js(14.xLTS 带npm、yarn)~~

✨ 全新的 [Them](https://github.com/jerrykuku/luci-theme-argon)

✨ x86_64 vmdk固件集成vm-tools

✨ x86_64 iso格式镜像

✨ x86_64 Lite版本(必要插件&应用商店)

<br>

## 自带插件
🍕 默认插件
- PassWall2 / SSR Plus / OpenClash
- AdGuard Home
- Mentohust
- ~~luci-app-vssr~~
- luci-adbyby-plus
- luci-app-unblockmusic
- luci-app-ddns
- luci-app-pushbot (全能推送)
- luci-app-onliner
- luci-app-ttyd
- luci-app-turboacc
- luci-app-upnp
- luci-app-netdata
- luci-usb-printer
- luci-app-nps
- luci-app-frpc
- luci-app-n2n
- luci-app-syncdial (多播插件)
- luci-app-turboacc
- luci-app-kms
- luci-app-docker
- luci-app-serverchan
- luci-app-control-timewol (定时wol唤醒)
- luci-app-aliyundrive-webdav (阿里云盘)
- luci-app-filebrowser
- luci-app-nfs   
......

<br>

## 文件目录说明
eg:

```
filetree
├── .github/workflows
│  ├── Rockchip.yml
│  ├── RaspberryPi3.yml
│  ├── RaspberryPi4.yml
│  ├── RaspberryPi5.yml
│  ├── x86_64.yml
│  ├── x86_64Lite.yml
│  ├── update-checker.yml
├── /configs/ (配置文件目录)   
│  ├── /luci/ (app插件配置)   
│  |  ├── Lite.config (简洁配置)   
│  |  ├── Standard.config (标准配置 大量插件)
│  ├── RPi3.config
│  ├── RPi4.config
│  ├── RPi5.config
│  ├── x86_64.config
│  ├── Rockchip.config
├── configure.sh (固件参数修改)
├── package.sh (luci-app)

Tips:
x86.conf | RPi4.config - 该类型配置文件主要为机型配置文件
Standard.conf / Lite.conf - 主要用于配置固件插件应用 
```
<br>

## 定制固件
1. Fork 此项目
2. 按需修改 ```configure.sh``` 和 ```package.sh``` 文件
3. 上传你自己的 ```xx.config``` 配置文件到configs目录
4. 添加或修改自己的``````xx.yml``````文件
5. 最后根据个人喜好修改 ```update-checker.yml``` 需自行添加 ```Actions secrets``` (触发自动编译)

### 注意事项：
📌 修改默认系统参数 👉 ```configure.sh```   
📌 添加其它Luci插件 👉 ```package.sh```   
📌 插件 / 应用配置文件 👉 ```configs/Standard.config```   
<br>

## 固件预览
**主界面(主题一)：**
![主界面](./assets/images/openwrt.png)

**应用商店/插件**
![应用商店/插件](./assets/images/appstore.png)

**服务/插件：**
![服务/插件](./assets/images/service.png)

**网络：**
![网络](./assets/images/network.png)

**经典主题二：**
![登录页](./assets/images/infinityfreedom-theme.png)

**主界面：**
![主界面](./assets/images/infinityfreedom-theme-main.png)


## 版权说明

该项目签署了MIT 授权许可，详情请参阅 [LICENSE](https://github.com/H-i-H/OpenWrts-HiH/blob/main/LICENSE)


## 项目支持
- [P3TERX/Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt)
- [coolsnowwolf/lede](https://github.com/coolsnowwolf/lede)
- [luci-theme-argon](https://github.com/jerrykuku/luci-theme-argon)
- [istore](https://github.com/linkease/istore)
- [P3TERX/Actions-OpenWrt](https://github.com/bigbugcc/OpenWrts)

## Stargazers over time
[![Stargazers over time](https://starchart.cc/bigbugcc/OpenWrts.svg)](https://starchart.cc/bigbugcc/OpenWrts)

<!-- links -->
[your-project-path]:https://github.com/H-i-H/OpenWrts-HiH/
[contributors-shield]: https://img.shields.io/github/contributors/bigbugcc/OpenWrts?style=flat-square
[contributors-url]: https://github.com/H-i-H/OpenWrts-HiH/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/bigbugcc/OpenWrts?style=flat-square
[forks-url]: https://github.com/H-i-H/OpenWrts-HiH/network/members
[stars-shield]: https://img.shields.io/github/stars/bigbugcc/OpenWrts?style=flat-square
[stars-url]: https://github.com/H-i-H/OpenWrts-HiH/stargazers
[issues-shield]: https://img.shields.io/github/issues/bigbugcc/OpenWrts?style=flat-square
[issues-url]: https://img.shields.io/github/issues/bigbugcc/OpenWrts
[license-shield]: https://img.shields.io/github/license/bigbugcc/OpenWrts?style=flat-square
[license-url]: https://github.com/H-i-H/OpenWrts-HiH/blob/master/LICENSE
