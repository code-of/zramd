#!/bin/bash
case $1 in
  prefix=*)
          bin_path=$(echo $1 | cut -d= -f2)
          ;;
        "")
          echo "If you dont define a prefix '/usr' will be used ? Confirm?"
          read -rp "y / n > " check
          if [ "$check" == "y" ]; then
            bin_path=/usr
          else
            exit 0
          fi
          ;;
        *)
          exit 0
          ;;
esac
echo "Using prefix=$bin_path ..."
installpath1=$bin_path/bin
installpath2=/etc/systemd/system
chmod +x zramd
chmod +x zramdconfig
mkdir /etc/zram.d
chmod 755 /etc/zram.d
mv zramd $installpath1/zramd
mv zramdconfig $installpath1/zramdconfig
mv zramd.service $installpath2/zramd.service
systemctl start zramd.service
systemctl stop zramd.service
echo "Run 'zramdconfig' to start configuration !"
exit 0
