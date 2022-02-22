# Openwrtdl软件sources自动每周更新

## 软件sources下载地址
 https://openwrt.ecoo.top/files/openwrtdl

## 编译时添加设置方法

```
通过menuconfig设置localmirror

make menuconfig

=> [*] Advanced configuration options (for developers)  --->

(https://openwrt.ecoo.top/files/openwrtdl)    Local mirror for source packages

```
```
或者在.config的配置里添加如下

CONFIG_LOCALMIRROR="https://openwrt.ecoo.top/files/openwrtdl"
```
