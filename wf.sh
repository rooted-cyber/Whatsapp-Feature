logo() {
	toilet -F metal -f font whatsapp
	printf "\n\033[1;96mThis tool created by\033[1;93m @rootedcyber(\033[0mhttps://github.com/rooted-cyber/\033[1;93m)\n\n"
	}
	saved() {
		printf "\n\033[1;92m Successfully saved \033[0m ( /sdcard/Whatsapp-Download )\n\n\n"
		}
		chf() {
			#termux-setup-storage
			cd /sdcard
			if [ -e "Whatsapp-Download" ];then
			echo
			else
			mkdir Whatsapp-Download
			fi
			}
	whc() {
		cd /data/data
		if [ -e "$wh" ];then
		printf "\n\033[1;91m Fetching info \033[0m $wh\033[1;91m and some usage\n"
		else
		printf "\033[0m $wh \033[1;91m is not installed or invalid name\n"
		exit
		fi
		}
	work() {
		cd /data/data/$wh
		}
		pho () {
			work
			cd files
			cat me
			cat me | grep -e "1"
			}
		imd() {
			work
			cd files
			cd ViewOnce
			cp -f *jpg /sdcard/Whatsapp-Download
			saved
			}
			vd() {
			work
			cd files
			cd ViewOnce
			cp -f *mp4 /sdcard/Whatsapp-Download
			saved
			}
			avd() {
				cd /sdcard/Whatsapp-Download
				if [ -e "Avatars" ];then
				work
				cd files
				cp -rf Avatars /sdcard/Whatsapp-Download/Avtars$RANDOM
				saved
				else
				work
				cd files
				cp -rf Avatars /sdcard/Whatsapp-Download
				fi
				}
				std() {
					cd /sdcard/Whatsapp-Download
				if [ -e "Stickers" ];then
				work
				cd files
				cp -rf Stickers /sdcard/Whatsapp-Download/Stickers$RANDOM
				saved
				else
				work
				cd files
				cp -rf Stickers /sdcard/Whatsapp-Download
				fi
				}
				stdb() {
					cd /sdcard/Whatsapp-Download
				if [ -e "S-Backup" ];then
				printf "\n Already backup sticker\n"
				else
				mkdir S-Backup
				work
				cd files
				cp -rf Stickers /sdcard/Whatsapp-Download/S-Backup
				work
				cd databases
				cp stickers.db /sdcard/Whatsapp-Download/S-Backup
				fi
				}
				stdr() {
					cd /sdcard/Whatsapp-Download/S-Backup
					if [ -e "stickers.db" ];then
					cp -rf Stickers /data/data/$wh/files
					cp -f stickers.db /data/data/$wh/databases
					printf "\n successfully restored sticker\n\n"
					else
					printf "\n\033[1;91m First backup\n"
					fi
					}
					logd() {
						work
						cd files
						rm -Rf Logs
						printf "\n Successfully deleted\n\n"
						}
						dar() {
							#cd /sdcard/Whatsapp-Download
							work
							cd files
							cd downloadable/wallpaper/thumbnails
							cp -rf dark /sdcard/Whatsapp-Download
							saved
							}
							li() {
								work
							cd files
							cd downloadable/wallpaper/thumbnails
							cp -rf light /sdcard/Whatsapp-Download
							saved
						dw() {
							printf "\n\n\033[1;91m[\033[0m 1\033[1;91m ]\033[1;93m Dark\n"
							printf "\033[1;91m[\033[0m 2\033[1;91m ]\033[1;93m Light\n"
							echo -e -n "Select your option\033[0m -->> "
							read ste
							case $ste in
							1)dar ;;
							2)li ;;
							*)dw ;;
							esac
							}
	menu() {
		chf
		logo
		echo -e -n "\033[1;92m Enter whatsapp package name :\033[0m "
		read wh
		whc
		printf "\n\n\033[1;91m[\033[0m 1\033[1;91m ]\033[1;93m View Once image download\n"
		printf "\033[1;91m[\033[0m 2\033[1;91m ]\033[1;93m View Once video download\n"
		printf "\033[1;91m[\033[0m 3\033[1;91m ]\033[1;93m Avatars Download\n"
		printf "\033[1;91m[\033[0m 4\033[1;91m ]\033[1;93m Sticker Download\n"
		printf "\033[1;91m[\033[0m 5\033[1;91m ]\033[1;93m Backup Sticker\n"
		printf "\033[1;91m[\033[0m 6\033[1;91m ]\033[1;93m Restore Sticker\n"
		printf "\033[1;91m[\033[0m 7\033[1;91m ]\033[1;93m Delete whatsapp log\n"
		printf "\033[1;91m[\033[0m 8\033[1;91m ]\033[1;93m Download Default Wallpaper\n"
		printf "\033[1;91m[\033[0m 9\033[1;91m ]\033[1;93m Exit\n\n\n"
		
		
		echo -e -n "Select your option\033[0m -->> "
		read se
		case $se in
		1)imd ;;
		2)vd ;;
		3)avd ;;
		4)std ;;
		5)stdb ;;
		6)stdr ;;
		7)logd ;;
		8)dw ;;
		9)exit ;;
		*)menu ;;
		esac
		}
		menu