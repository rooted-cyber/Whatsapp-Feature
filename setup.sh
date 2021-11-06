a() {
	termux-setup-storage
	printf "\n Updating..\n"
	apt update
	apt upgrade
	for a in python wget tsu pv figlet toilet;do
	apt install $a || apt reinstall $a
	done
	mkdir files
	cd files
	wget https://github.com/rooted-cyber/Unpack-Repack/raw/main/files/Font.deb
	dpkg -i *deb
	termux-setup-storage
	cd /sdcard
	mkdir Whatsapp-Download
	cd Whatsapp-Download
	mkdir S-Backup
	}
	a