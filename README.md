# platform-cuboxi
Platform files for SolidRun Cuboxi/ Hummingboard  

### Kernel Sources  

Mainline built with the Armbian Build scripts, see https://docs.armbian.com/Developer-Guide_Build-Preparation/  

### Contents  
This repo contains all platform-specific files, used by the Volumio Builder to create **cubox-i** and **hummingboard** images:

- Kernel files (kernel, modules, firmware)
- Other files, e.g. used during the boot process

**Platform files with kernel version 4.7.2**
- 20160827: First commit for Volumio 2

**Platform files with kernel version 4.4.15**
- 20160904: Moved to version 4.4.15 because of SPDIF problems with 4.7.2
- 20160904: Reverted to 4.7.2 as 4.4.15 did not bring any improvement

**Platform files with kernel version 4.7.2**
- 20160911: Fixes SPDIF regression since 4.4
            Changed imx6qdl.dtsi according to patch 
            http://git.kernel.org/cgit/linux/kernel/git/next/linux-next.git/commit/arch/arm/boot/dts/imx6qdl.dtsi?id=f065e9e4addd75c21bb976bb2558648bf4f61de6
- 20160913: Added ALSA aliases            
- 20160926: Added Broadcom WLAN drivers
- 20161127: Added /lib/firmware/brcm/brcmfmac4329-sdio.txt and /lib/firmware/brcm/brcmfmac4329-sdio.txt  
- 20170122: Added Kernel option 'cfg80211 wireless extensions compatibility'  
- 20170129: ===== Reversed to Legacy Kernel 3.14.79  

**Platform files with kernel version 3.14.79**
- 20170129: Changed from Kernel 4.7.2 to 3.14.79 after backporting overlayfs with a modified patch-set  
- 20170202: Re-tarred

**Platform files with kernel version 4.14.56**
- 20180720: Changed from Kernel 3.14.79 to Armbian Kernel 4.14.56-cuboxi  

**Platform files with kernel version 4.14.90**
- 20181224: Changed to Armbian Kernel 4.14.90-cuboxi  
- 20181224: ALSA: USB-Audio: Backport from kernel 4.18/4.19: Generic DSD detection for XMOS-based implementations-4.14.90  plus support for additional DACs with DSD capabilities. 




