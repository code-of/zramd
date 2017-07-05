# **zramd** -> *zram-daemon* <-
#### with **zramconfigure** ( interactive configuration for **zramd** )
##### An **easy-to-use** and **colored** ZRAM-configuration tool

This little helper provides a comfortable way to manage and configure  
your ZRAM-module to fit for your needs.  
> Here is a list of features given by ***zramconfig*** :
- *colored menu*
- *shows live-status of unassigned RAM and zramd.service*
- *shows active devices and their properties*
- *reconfigure/remove existing configurations*
- *enable|start|stop|restart|disable the system-service*
- *create new configurations with various options*
- *( ext2|ext4|vfat|swap and editable mount options )*
******
##### ** The menu capabilities : **
    ┏━1) Add a new device
    ┃ ┗━Which type of zram ? - ext2 ┃ ext4 ┃ vfat ┃ swap
    ┃   ┗━Which size ? (show maxsize) - format <value>G or <value>M
    ┃     ┗━Which compression algorithm ? - lzo ┃ lz4 ┃ inflate
    ┃       ┗━(ext2|ext4|vfat)
    ┃       ┃  ┗━Where to mount ?
    ┃       ┃    ┗━What mount-options ? (defaults to noatime,barrier=0)
    ┃       ┗━(swap)
    ┃          ┗━Which Swap-priority level ?
    ┃━2) Reconfigure existing
    ┃ ┗━Which device ? - shows a list
    ┃   ┗━Which type of zram ? - ext2 | ext4 | vfat | swap
    ┃     ┗━Which size ? (show maxsize) - format <value>G or <value>M
    ┃       ┗━Which compression algorithm ? - lzo | lz4 | inflate
    ┃         ┗━(ext2|ext4|vfat)
    ┃         ┃  ┗━Where to mount ? - absolute path
    ┃         ┃    ┗━What mount-options ? - defaults to 'noatime,barrier=0'
    ┃         ┗━(swap)
    ┃            ┗━Which Swap-priority level ?
    ┃
    ┃━3) Remove a device
    ┃ ┗━Which one ? (instant removal no prompt) - shows a list
    ┃━4) Service-interaction
    ┃ ┗━What should be done ? - enable ┃ start ┃ stop ┃ restart ┃ disable
    ┗━0) Quit  
******
![ColoredMenu](https://github.com/ergotamin/zramd/blob/master/screenshot.jpg)
