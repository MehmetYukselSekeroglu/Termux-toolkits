#!/bin/bash
echo "Termux yardımcısına hoş geldiniz!"
echo ""
echo "Ypımcılar: @TheKoba & @setpassunlock"
echo ""
sleep 2
clear
while :
do
	#echo "$(tput setaf 2)" -> renk testleri için eklendi	
	echo "=============================="
	echo ""
	echo "1 - Üst klasöre git"
	echo "2 - seçilen klasöre git"
	echo "3 - Başlangıç (home) dizinine git"
	echo "4 - dosya oluştur"
	echo "5 - sistemi güncelle"
	echo "6 - GitHub'dan kod çek"
	echo "7 - klasör içeriğini sırala"
	echo "8 - dosya çalıştır"
	echo "9 - klasör oluştur"
	echo "0 - çıkış yap"
	echo ""
	echo "=============================="
	echo ""
	echo "11- Hack tool kurucusu ( test aşamasında! )"
	echo "12 - Lisans ve İletişim bilgileri"
	echo ""
	echo "=============================="
	echo ""
	echo "mevcut dizin -> $PWD"
	echo "ev dizini -> $HOME"
	echo ""
	echo "=============================="
	
	read -p "-işlem--> " islem_nosu
	if [[ "$islem_nosu" = "1" ]]
	then
		cd ..
		echo "$PWD içerisindesiniz."
		sleep 2
	
	elif [[ "$islem_nosu" = "2" ]] 
	then
		ls
		echo "=============================="
		read -p "gidilecek klsörün adı -> " gidilecek_klasor
		cd $gidilecek_klasor
	
	elif [[ "$islem_nosu" = "3" ]]
	then
		cd $HOME
		echo "$PWD içerisindesiniz."
		sleep 2
	elif [[ "$islem_nosu" = "4" ]] 
	then
		read -p "-dosya adı (uzantısı ile)-> " dosya_ad
		touch dosya_ad
		echo "$dosya_ad'lı dosya $PWD içerisine oluşturuldu."
		sleep 2 
	elif [[ "$islem_nosu" = "5" ]]
	then
		pkg update 
		pkg upgrade -y
		apt update 
		apt upgrade -y
		clear 
		echo "sisteminiz güncellendi."
		sleep 2
	elif [[ "$islem_nosu" = "6" ]]
	then
		echo "gereksinimler indiriliyor...."
		pkg install -y git 
		read -p "GitHub linkini giriniz -> " git_link
		git clone $git_link
		echo "Kod başarıyla çekildi."
		sleep 2
		read -p "devam etmek için enter"
		clear
	elif [[ "$islem_nosu" = "7" ]] 
	then
		ls -al
		sleep 3
		read -p "devam etmek için enter"
	elif [[ "$islem_nosu" = "8" ]]
	then 
		ls -al 
		echo "=============================="
		echo ""
		read -p "çalıştırılacak-dosya-tam-ad -> " dosyax_ad
		chmod +x $dosyax_ad
		./$dosyax_ad
	elif [[ "$islem_nosu" = "9"  ]]
	then
		read -p "klasör adı: " klasor_ad
		mkdir $klasor_ad
		echo "$klasor_ad'lı klasör $PWD içerisine oluşturuldu."
		sleep 2
		read -p "devm etmek için enter"
	elif [[ "$islem_nosu" = "0" ]]
	then	
		echo "çıkış yapılıyor"
		exit
	
	#hack tool kısmı için boşluk sonrasında karışmasın diye
	elif [[ "$islem_nosu" = "11" ]]
	then	
		
		while :
		do 	
			if [ -d "$HOME/Hack-Tools" ]
			then 
				echo "Hack-Tool klasörü tespit edildi...!"
				cd $HOME/Hack-Tools
				sleep 1
			else 
				echo "Hack-Tool klasör bulunamadı oluşturuluyor...."
				echo "=============================="
				echo ""
				echo "depolama iznini onaylayınız!"
				sleep 1
				termux-setup-storage
				mkdir $HOME/Hack-Tools
				cd $HOME/Hack-Tools
				sleep 3
			fi
			
			clear 
			echo "=============================="
			echo ""
			echo "Bu alan test aşamasındadır!"
			echo "1 - Ngrok kurucusu (Aktif değil)"
			echo "2 - Fotoğraf gömülü bilgilerini oku"
			echo "3 - Base64 Encode & Decode"
			echo "4 - Wordlist oluşturucu"
			printf "5 - IP-Tracer (İp adres izleyici)\n"
			

			echo "99 - çıkış"
			echo ""
			echo "=============================="
			read -p "-işlem--> " hack_islem
			if [[ "$hack_islem" = "1" ]] 
			then
				clear
				echo "=============================="
				echo ""
				echo "Ngrok kurulumu başlatılıyor"
				sleep 1
				
				
			elif [[ "$hack_islem" = "2" ]]
			then 
				echo "Kontroller ypılıyor..."
				sleep 1
				if [ -d "$HOME/Hack-Tools/exiftool" ]
				then
					echo "exiftool zaten kurulu...!"
					sleep 1
					cd $HOME
					echo "$HOME dizini içeriği:"
					echo "=============================="
					ls
					echo "" 
					echo "=============================="
					echo ""
					read -p "İncelenecek dosya tam adı -> " exif_img
					echo ""
					echo "=============================="
					cd $HOME/Hack-Tools/exiftool/
					perl $HOME/Hack-Tools/exiftool/exiftool $HOME/$exif_img
					echo ""
					echo "=============================="
					echo ""
					read -p "çıkmak için ENTER"
					
				else 
					echo "exiftool kuruluyor...."
					sleep 1
					echo "=============================="
					pkg install git -y 	
					clear 
					git clone "https://github.com/exiftool/exiftool.git" $HOME/Hack-Tools/exiftool
					echo "Dosyalar alındı...."
					echo "perl kuruluyor....."
					pkg install perl -y
					sleep 2
					clear
					cd $HOME
					echo "$HOME dizini içeriği:"
					echo "=============================="
					ls -al 
					echo "" 
					echo "=============================="
					echo ""
					read -p "İncelenecek dosya tam adı -> " exif_img
					perl $HOME/Hack-Tools/exiftool/exiftool $exif_img
					echo ""
					echo "=============================="
					echo ""
					read -p "çıkmak için ENTER"
					
					
				fi	
			
			elif [[ "$hack_islem" = "3" ]] 
			then 
				while :
				do
					clear 
					echo "=============================="
					echo ""
					echo "- Base64 Encode & Decode -"
					echo "1 - Metni encode et"
					echo "2 - Metni decode et"
					echo ""
					echo "99 * çık"
					echo ""
					echo "=============================="
					
					read -p "-işlem-> " base_islem
					if [[ "$base_islem" = "1" ]]
					then 
						clear
						echo ""
						read -p "Metni giriniz -> " base_metin
						echo ""
						echo "=============================="
						echo ""
						echo "$base_metin" | base64
						echo ""
						echo "=============================="
						echo ""
						read -p "Çıkmak için ENTER"
					elif [[ "$base_islem" = "2" ]] 
					then  
						clear 
						echo ""
						read -p "çözülecek kod -> " base_code
						echo ""
						echo "=============================="
						echo ""
						echo "$base_code" | base64 -d
						echo ""
						echo "=============================="
						echo ""
						read -p "Çıkmak için ENTER"
					
					
					elif [[ "$base_islem" = "99" ]] 
					then 
						echo "çıkış yapılıyor..............!"
						sleep 2
						break
					
					
					else 
						echo "bilinmeyen girdi....!"
						sleep 1
					fi
				done 
					#base64 tool bitiş noktası 
					
			#cupp wordlist oluşturucu için olan elif blogu 
			elif [[ "$hack_islem" = "4" ]]
			then
				if [[ -d "$HOME/Hack-Tools/cupp" ]]
				then
					echo "Cupp zaten kurulu...!"
					sleep 1
					echo "=============================="
					echo ""
					echo "Tool etkileşimli olarak başlatılıyor....!"
					echo ""
					python3 $HOME/Hack-Tools/cupp/cupp.py -i
					echo ""
					echo "Wordlistiniz $HOME/Hack-Tools/cupp ltına oluşturuldu..!"
					echo ""
					sleep 2
					read -p "Devam etmek için ENTER"
				else 
					echo "Cupp kuruluyor...!"
					echo "Gereksinimler indiriliyor...!"
					sleep 1
					echo ""
					pkg install python3 -y
					pkg install git -y
					clear 
					echo "=============================="
					echo ""
					echo "GitHub'dan dosyalar alınıyor...!"
					sleep 1
					git clone https://github.com/Mebus/cupp.git $HOME/Hack-Tools/cupp
					clear
					echo ""
					echo "Tool etkileşimli şekilde başlatılıyor...!"
					echo ""
					python3 $HOME/Hack-Tools/cupp/cupp.py -i
					echo ""			
					echo "=============================="
					echo ""
					echo "Wordlistiniz $HOME/Hack-Tools/cupp ltına oluşturuldu..!"
					echo ""
					sleep 2
					read -p "Devam etmek için ENTER"
				fi
				
			elif [[ "$hack_islem" = "5" ]]
			then
				while :
				do
					
				if [[ -d "$HOME/Hack-Tools/IP-Tracer"  ]]
				then	
					clear
					echo "IP-Tracer zaten kurulu......"
					sleep 1
					clear
					cd $HOME/Hack-Tools/IP-Tracer
					echo "=============================="
					echo ""
					echo "- IP-Tracer -"
					echo "1 - Kendi ip adresini takip et"
					echo "2 - Belirli bir ip yi takip et"
					echo ""
					echo "0 - Çıkış"
					echo ""
					echo "=============================="
					echo ""
					read -p "-işlem-> " ip_traces
					if [[ "$ip_traces" = "1" ]]
					then
						echo "=============================="
						cd $HOME/Hack-Tools/IP-Tracer/
						bash ip-tracer -m
						
						echo ""
						echo "=============================="
						echo ""
						read -p "devam etmek için ENTER"
					elif [[ "$ip_traces" = "2" ]]
					then 
						echo "=============================="
						echo ""
						read -p "Takip edilecek ip adresini giriniz ->" 
						echo "==============================" 
						echo ""
						cd $HOME/Hack-Tools/IP-Tracer/
						bash ip-tracer -t $REPLY
						echo ""
						echo "=============================="
						sleep 1
						read -p "devam etmek için enter"
						clear 
					elif [[ "$ip_traces" = "0" ]] 
					then 
						echo "çıkış yapılıyor....!"
						sleep 1
						break
					else 
						echo "bilinmeyen girdi.....!"
						sleep 1
						clear
					fi
				else	
					clear
					printf "==============================\n"
					echo "IP-Tracer kuruluyor..........."
					echo "Gereksinimler indriliyor......"
					pkg install git -y 
					git clone https://github.com/rajkumardusad/IP-Tracer.git $HOME/Hack-Tools/IP-Tracer
					chmod +x $HOME/Hack-Tools/IP-Tracer/install 
					echo "Kurulum başlatıldı...."
					sleep 1
					bash $HOME/Hack-Tools/IP-Tracer/install 
					clear 
					echo "=============================="
					echo ""
					echo "kurulum başarılı....!"
					echo ""
					echo "=============================="
					sleep 1
					clear
					echo "=============================="
					echo ""
					echo "- IP-Tracer -"
					echo "1 - Kendi ip adresini takip et"
					echo "2 - Belirli bir ip yi takip et"
					echo ""
					echo "0 - Çıkış"
					echo ""
					echo "=============================="
					echo ""
					read -p "-işlem-> " ip_traces
					if [[ "$ip_traces" = "1" ]]
					then
						echo "=============================="
						cd $HOME/Hack-Tools/IP-Tracer/
						bash ip-tracer -m
						
						echo ""
						echo "=============================="
						echo ""
						read -p "devam etmek için ENTER"
					elif [[ "$ip_traces" = "2" ]]
					then 
						echo "=============================="
						echo ""
						read -p "Takip edilecek ip adresini giriniz -> " $trc_ip
						echo "==============================" 
						echo ""
						cd $HOME/Hack-Tools/IP-Tracer/
						bash ip-tracer -t $trc_ip
						echo ""
						echo "=============================="
						sleep 1
						read -p "devam etmek için enter"
						clear
					elif [[ "$ip_traces" = "0" ]] 
					then 
						echo "çıkış yapılıyor....!"
						sleep 1
						break
					else 
						echo "bilinmeyen girdi.....!"
						sleep 1
						clear
					fi
				fi
				done
			elif [[ "$hack_islem" = "99" ]] 
			then 
				clear 
				echo "çıkış yapılıyor....!"
				sleep 1
				break
				
			
				
			else 
				echo "Bilinmeyen girdi !"
				sleep 1
				clear 
			fi					
		done
	# ana tool un bitiş noktası
	
	elif [[ "$islem_nosu" = "12" ]]
	then	
		clear
		echo ""
		echo "Bu tool @TheKoba & @setpassunlock tarafından geliştirilmektedir."
		echo ""
		echo "Tool MIT lisansı ile lisanslanmıştır"
		echo ""
		read -p "Çıkmak için ENTER"
	
	 	
	else
		echo "bilinmeyen girdi...!"
		sleep 2
	fi
	clear
		
done 
	
