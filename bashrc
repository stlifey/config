### ALIAS
## Important
alias  ..='cd ..'
alias  ll='ls -la'
alias  cp='cp -i'
alias  mv='mv -i'
alias  rm='rm -i'

## Kindle Touch
alias kindle-touch-ssh="ssh root@192.168.15.244"
alias kindle-touch-usb="ifconfig usb0 192.168.15.1"

## Kindle Fire
alias kindle-fire-fastboot="fastboot -i 0x1949"
alias kindle-fire-set-boot-mode="fastboot -i 0x1949 oem idme bootmode 4000"
alias kindle-fire-set-recovery-mode="fastboot -i 0x1949 oem idme bootmode 4001"
alias kindle-fire-set-fastboot-mode="fastboot -i 0x1949 oem idme bootmode 4001"

## Linux Kernel
alias module-rebuild="module-rebuild rebuild"
alias kernel-clean="make clean && rm -f .config.old && rm -f .version"
alias kernel-config="zcat /proc/config.gz > .config"
alias kernel-install="make -j2 && cp arch/x86/boot/bzImage /boot/bzImage && make modules_install"

## MPlayer
alias m2="mplayer2 -lavdopts threads=3 -framedrop"
alias mplayer="mplayer -vo fbdev2"
alias mplayer2="mplayer2 -lavdopts threads=3 -framedrop"
alias mplayer-music="mplayer -cdrom-device /dev/sr0 cdda:// -cache 1048576"
alias mencoder-oc="mencoder -idx -ovc copy -oac mp3lame -o"

## Portage
alias sync="emerge --sync | grep "\.ebuild""
alias update="emerge --update --deep --newuse world"

## Other
alias nano="nano -w"
alias tmux0="tmux a -t 0"
alias tmux1="tmux a -t 1"
alias tmux2="tmux a -t 2"
alias patch="patch -Np1 -i"

## Editor
alias leafpad-big5="leafpad --codeset=big5"
alias leafpad-gb18030="leafpad --codeset=gb18030"

## Proxy
alias export-proxy="export http_proxy=127.0.0.1:8888"
alias export-proxy-ssl="export https_proxy=127.0.0.1:8888"

## Download
alias wget="wget -c"
alias lx="xunlei-lixian-cli"
alias lxl="xunlei-lixian-cli list"
alias lxd="xunlei-lixian-cli download" 
alias lxl-watch="watch -n 60 xunlei-lixian-cli list"

## Backup
alias backup="tar -cvpzf ./backup.tar.gz \
	--exclude=/dev \
	--exclude=/sys \
	--exclude=/mnt \
	--exclude=/ext \
	--exclude=/proc \
	--exclude=/media \
	--exclude=/lost+found \
	--exclude=/tmp/* \
	--exclude=/root/* \
	--exclude=/var/log/* \
	--exclude=/usr/portage/* \
	--exclude=backup.tar.gz \
	/"

### CCACHE
export CCACHE_DIR=/ccache/root
export PATH=/usr/local/bin:/usr/lib/ccache/bin:$PATH

### BASH Complete
complete -cf man
complete -cf sudo
complete -cf watch
complete -cf which

[[ -f /etc/profile.d/bash-completion.sh ]] && source /etc/profile.d/bash-completion.sh

### MISC
export PYTHONDONTWRITEBYTECODE=x
