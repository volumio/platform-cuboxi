# platform-cuboxi
Platform files for SolidRun Cuboxi/ Hummingboard  

### Kernel Sources

Mainline built with the Armbina Build scripts, see https://docs.armbian.com/Developer-Guide_Build-Preparation/  

(obsolete)  
Mainline (unused as of 20170129) http://www.kernel.org, version 4.7.2  
Legacy (unused as of 20180720) https://github.com/SolidRun/linux-fslc, version 3.14.79  

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




