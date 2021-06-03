#!/bin/bash
# https://github.com/Hyy2001X/AutoBuild-Actions
# AutoBuild Module by Hyy2001
# AutoBuild DiyScript

Diy_Core() {
	Author=teasiu
	Default_Device=
	Short_Firmware_Date=true
	Default_IP_Address=192.168.1.1

	INCLUDE_AutoUpdate=true
	INCLUDE_AutoBuild_Tools=true
	INCLUDE_DRM_I915=true
	INCLUDE_Theme_Argon=true
	INCLUDE_Obsolete_PKG_Compatible=true

	Upload_VM_Firmware=true
}

Firmware-Diy() {
	TIME "Starting run Firmware-Diy commands..."
	AddPackage git other luci-app-adguardhome Hyy2001X

	case ${TARGET_PROFILE} in
	d-team_newifi-d2)
		Replace_File CustomFiles/mac80211.sh package/kernel/mac80211/files/lib/wifi
		Replace_File CustomFiles/system_d-team_newifi-d2 package/base-files/files/etc/config system
		# Replace_File CustomFiles/Patches/102-mt7621-fix-cpu-clk-add-clkdev.patch target/linux/ramips/patches-5.4
	;;
	*)
		case ${Current_Branch} in
		19.07)
			AddPackage git kernel rtl8192eu-openwrt teasiu main
		;;
		esac
	;;
	esac
}
