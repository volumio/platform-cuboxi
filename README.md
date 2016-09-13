Build
=====

This repo contains all platform-specific files, used by the Volumio Builder to create **cubox-i** and **hummingboard** images:

- Kernel files (kernel, modules, firmware)
- Other files, e.g. used during the boot process

**Platform files with kernel version 4.7.2**
- 20160827: First commit for Volumio 2

**Platform files with kernel version 4.4.15**
- 20160904: Moved to version 4.4.15 because of SPDIF problems with 4.7.2
- 20160904: Reverted to 4.7.2 as 4.4.15 did not bring any improvement
- 20160911: Fixes SPDIF regression since 4.4
            Changed imx6qdl.dtsi according to patch 
            http://git.kernel.org/cgit/linux/kernel/git/next/linux-next.git/commit/arch/arm/boot/dts/imx6qdl.dtsi?id=f065e9e4addd75c21bb976bb2558648bf4f61de6
- 20160913: Added ALSA aliases            
