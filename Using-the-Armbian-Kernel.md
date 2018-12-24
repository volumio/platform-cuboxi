
# How to use the Armbian Build process for Volumio 


## Sources

Sources
: https://github.com/armbian/build

Build version	
: v5.67 

U-boot version	
: U-Boot 2013.10-rc4

Kernel version	
: 4.14.90-cubox

Compiled
: 24.12.2018

Documentation	
: https://docs.armbian.com/Developer-Guide_Build-Preparation/

## Armbian Build documentation

Follow the instructions in the Armbian documentation to download the repo for building an Armbian system.
You only need to compile u-boot and the kernel.

- In the build selection menu, choose "U-boot and kernel package".
- In the kernel configuration menu, choose "Do not change the kernel configuration" (the default config has all we need for Volumio).
- In the target board selection menu, choose "cuboxi".

The Armbian build will continue to download and install all dependencies (tools/ cross-compilers) before starting to compile u-boot and the kernel.
These will be delivered as ".deb" packages in the build output folder.
Transfer them to the folder were you want to assemble the platform package to be used by volumio, call it cuboxi, e.g. $HOME/cuboxi.



## Assembling the Volumio platform folder

See script **build-platform.sh** as an example.

## Create additional files

In the **cuboxi/boot** subfolder, create a file called **uEnv.txt** with the following contents:

	volumioarg=imgpart=/dev/mmcblk0p2 imgfile=/volumio_current.sqsh rootwait rw hwdevice=cuboxi
	mmcargs=setenv bootargs console=ttymxc0,115200n8 console=tty ${volumioarg}
	kernel=zImage
	ramdisk_file=uInitrd
	ramdisk_addr=0x18100000

Create folder **cuboxi/nvram-fw** and take the contents from an existing cuboxi platform folder (e.g. http://github.com/volumio/platform-cuboxi).

From the same platform folder, also copy **/usr/share/alsa** to the **cuboxi/usr** fodler

## Create the tar file

Go to the parent folder, in this example's case: $HOME and make a tarball:

	tar cvfJ cuboxi.tar.xz ./cuboxi
  

***
~Monday, 24. December 2018 19:00pm ~



