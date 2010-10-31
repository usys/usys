Tiny Core accepts the following boot time options:
 Color            640x480     800x600      1024x768     1280x1024
   256    8 bit     769         771           773          775
 32000   15 bit     784         787           790          793
 65000   16 bit     785         788           791          794
 16.7M   24 bit     786         789           792          795
 tinycore vga=7xx                    7xx from table above
 tinycore tce={hda1|sda1}            Specify Restore TCE apps directory
 tinycore base                       Skip TCE load only the base system
 tinycore restore={hda1|sda1|floppy} Specify saved configuration location
 tinycore swapfile{=hda1}            Scan or Specify for a swap file
 tinycore dosswapfile{=hda1}         Scan or Specify dosswapfile
 tinycore nodhcp                     Skip the dhcp request for eth0 at boot
 tinycore superuser                  Textmode as user root
 tinycore text                       Textmode 
 tinycore waitusb=X                  Wait X seconds for slow USB devices.
 tinycore home={hda1|sda1}           Specify peristent home directory.
 tinycore cryptohome={hda1|sda1}     Specify peristent home dir or file.
 tinycore opt={hda1|sda1}            Specify peristent opt directory.
 tinycore local={hda1|sda1}          Specify PPI directory or loopback file.
 tinycore noutc                      BIOS is using localtime.
 tinycore tz=GMT+8                   Timezone tz=PST+8PDT,M3.2.0/2,M11.1.0/2
 tinycore laptop                     Force load laptop related modules.

