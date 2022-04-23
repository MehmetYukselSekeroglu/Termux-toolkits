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
	echo "2 - Seçilen klasöre git"
	echo "3 - Başlangıç (home) dizinine git"
	echo "4 - Dosya oluştur"
	echo "5 - Sistemi güncelle"
	echo "6 - GitHub'dan kod çek"
	echo "7 - Klasör içeriğini sırala"
	echo "8 - Dosya çalıştır"
	echo "9 - Klasör oluştur"
	echo "0 - Çıkış yap"
	echo ""
	echo "=============================="
	echo ""
	echo "11- Hack tool kurucusu ( test aşamasında! )"
	echo "12 - Lisans ve iletişim bilgileri"
	echo ""
	echo "=============================="
	echo ""
	echo "Mevcut dizin -> $PWD"
	echo "Ev dizini -> $HOME"
	echo ""
	echo "=============================="
	
	read -p "-İşlem--> " islem_nosu
	if [[ "$islem_nosu" = "1" ]]
	then
		cd ..
		echo "$PWD içerisindesiniz."
		sleep 2
	
	elif [[ "$islem_nosu" = "2" ]] 
	then
		ls
		echo "=============================="
		echo ""
		read -p "Gidilecek klsörün adı -> " gidilecek_klasor
		cd $gidilecek_klasor
	
	elif [[ "$islem_nosu" = "3" ]]
	then
		cd $HOME
		echo "$PWD içerisindesiniz."
		sleep 2
	elif [[ "$islem_nosu" = "4" ]] 
	then
		read -p "-Dosya adı (uzantısı ile)-> " dosya_ad
		touch dosya_ad
		echo "$dosya_ad'adlı dosya $PWD içerisine oluşturuldu."
		sleep 2 
	elif [[ "$islem_nosu" = "5" ]]
	then
		pkg update 
		pkg upgrade -y
		apt update 
		apt upgrade -y
		clear 
		echo "Sisteminiz güncellendi."
		sleep 2
	elif [[ "$islem_nosu" = "6" ]]
	then
		echo "Gereksinimler indiriliyor...."
		pkg install -y git 
		read -p "GitHub linkini giriniz -> " git_link
		git clone $git_link
		echo "Kod başarıyla çekildi."
		sleep 2
		read -p "Devam etmek için enter"
		clear
	elif [[ "$islem_nosu" = "7" ]] 
	then
		ls -al
		sleep 3
		read -p "Devam etmek için enter"
	elif [[ "$islem_nosu" = "8" ]]
	then 
		ls -al 
		echo "=============================="
		echo ""
		read -p "Çalıştırılacak-dosya-tam-ad -> " dosyax_ad
		chmod +x $dosyax_ad
		./$dosyax_ad
	elif [[ "$islem_nosu" = "9"  ]]
	then
		read -p "klasör adı: " klasor_ad
		mkdir $klasor_ad
		echo "$klasor_ad'adlı klasör $PWD içerisine oluşturuldu."
		sleep 2
		read -p "Devm etmek için enter"
	elif [[ "$islem_nosu" = "0" ]]
	then	
		echo "Çıkış yapılıyor...!"
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
				echo ""
				echo "=============================="
				echo ""
				echo "Depolama iznini onaylayınız!"
				sleep 1
				termux-setup-storage
				mkdir $HOME/Hack-Tools
				cd $HOME/Hack-Tools
				sleep 3
			fi
			
			clear 
			echo "=============================="
			echo ""
			echo "1 - Ngrok kurucusu (Aktif değil)"
			echo "2 - Exiftool (Fotoğraf gömülü bilgilerini oku)"
			echo "3 - Base64 Encode & Decode"
			echo "4 - Cupp (Wordlist oluşturucu)"
			printf "5 - IP-Tracer (İp adres izleyici)\n"
			echo "6 - Birçok tool için gerekli yardımcı paketleri kur"
			echo "7 - Nmap taraması yap"

			echo "99 - Çıkış"
			echo ""
			echo "=============================="
			read -p "-İşlem--> " hack_islem
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
					echo "Exiftool zaten kurulu...!"
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
					read -p "Çıkmak için ENTER"
					
				else 
					echo "Exiftool kuruluyor...."
					sleep 1
					echo "=============================="
					pkg install git -y 	
					clear 
					git clone "https://github.com/exiftool/exiftool.git" $HOME/Hack-Tools/exiftool
					echo "Dosyalar alındı...."
					echo "Perl kuruluyor....."
					pkg install perl -y
					sleep 2
					clear
					echo "=============================="
					echo ""
					echo "Tool başarıyla kuruldu...!"
					echo "Toolu menüden çalıştırabilirsiniz...!"
					echo ""
					echo "=============================="
					echo ""
					read -p "Çıkmak için ENTER"
					
					
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
					echo "99 - Çık"
					echo ""
					echo "=============================="
					
					read -p "-İşlem-> " base_islem
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
						read -p "Çözülecek kod -> " base_code
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
						echo "Çıkış yapılıyor..............!"
						sleep 2
						break
					
					
					else 
						echo "Bilinmeyen girdi....!"
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
					echo "Wordlistiniz $HOME/Hack-Tools/cupp altına oluşturuldu..!"
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
					echo ""
					sleep 1
					git clone https://github.com/Mebus/cupp.git $HOME/Hack-Tools/cupp
					clear
					echo "=============================="
					echo ""
					echo "Tool başarıyla kuruldu menüden çalıştırabilirsiniz...!"
					echo ""			
					echo "=============================="
					echo ""
					sleep 2
					read -p "Devam etmek için ENTER"
					clear
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
					read -p "-İşlem-> " ip_traces
					if [[ "$ip_traces" = "1" ]]
					then
						echo "=============================="
						cd $HOME/Hack-Tools/IP-Tracer/
						bash ip-tracer -m
						
						echo ""
						echo "=============================="
						echo ""
						read -p "Devam etmek için ENTER"
					elif [[ "$ip_traces" = "2" ]]
					then 
						echo "=============================="
						echo ""
						read -p "Takip edilecek ip adresini giriniz ->" 
						echo ""
						echo "==============================" 
						echo ""
						cd $HOME/Hack-Tools/IP-Tracer/
						bash ip-tracer -t $REPLY
						echo ""
						echo "=============================="
						sleep 1
						read -p "Devam etmek için enter"
						clear 
					elif [[ "$ip_traces" = "0" ]] 
					then 
						echo "Çıkış yapılıyor....!"
						sleep 1
						break
					else 
						echo "Bilinmeyen girdi.....!"
						sleep 1
						clear
					fi
				else	#kurulum blogu 
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
					echo "Kurulum başarılı....!"
					echo "Toolu menüden çalıştırbilirsiniz....!"
					echo ""
					echo "=============================="
					sleep 1
					read -p "Çıkmak için ENTER"
				fi
				done
			elif [[ "$hack_islem" = "6" ]]
			then 	
				echo "=============================="
				echo ""
				echo "Aşşağıdaki paketler kurulacak onaylıyormusunuz...?"
				echo ""
				echo "git (GitHub'dan kod çekmeye yarar)"
				echo "python3 & python"
				echo "python3-pip (python3 paket yöneticisi)"
				echo "wget & curl"
				echo "php & ruby & perl"
				echo "vim & nano & cat (standart terminal editörleri)"
				echo "cmatrix (havalı terminal ekranı yapıyor)"
				echo "nmap & hydra & openssl & nodejs"
				echo ""
				echo "Bu alan https://github.com/SaD-RaZaM/SaD-Kit.git projesinden referans alınmıştır...!"
				echo ""
				echo "=============================="
				echo ""
				echo "1 - Onaylıyorum"
				echo "2 - Onaylamıyorum & çıkış"
				echo ""
				echo "=============================="
				echo ""
				read -p "İndirmeyi onaylıyormusunuz? ->" ext_pack
				if [[ "$ext_pack" = "1" ]] ; then
					clear
					echo "=============================="
					echo ""
					echo "Kurulum başlatılıyor....!"
					echo ""
					pkg instll git python3 python python3-pip wget curl php ruby perl vim nano cat cmatrix nmap hydra openssl nodejs -y
					pkg update
					pkg upgrade -y
					sleep 1
					clear 
					echo "=============================="
					echo ""
					echo "Kurulum tamamlandı ve sisteminiz güncellendi...!"
					echo ""
					echo "=============================="
					echo ""
					sleep 1
					read -p "Çıkmak için ENTER"
				elif [[ "$ext_pack" = "2" ]] ; then
					echo "Çıkış yapılıyor...!"
					sleep 1
				else 
					echo "Bilinmeyen girdi çıkılıyor...!"
					sleep 2
				fi
				#ext_pack bitiş noktası 
			elif [[ "$hack_islem" = "7" ]] ; then
				clear 
				if [[ -d "$HOME/Hack-Tools/nmap" ]] ; then
					echo "Nmap zaten kurulu...!"
					sleep 1
					clear
					while :
					do	
						clear
						echo "=============================="
						echo ""
						echo "- nmap -" 
						echo "0 - nmap versiyonunu gösterir"
						echo "1 - Temel tarama"
						echo "2 - Ayrıntılı + port versiyon taramsı"
						echo "3 - Tüm portları ayrıntılı tara (saatler sürer)"
						echo "4 - En yaygın 100 port'u tara"
						echo "5 - En yaygın 500 port'u tara"
						echo "6 - Ayrıntılı + port versiyonu + agresif tarama"
						echo "7 - Agresif port verisyon taraması"
						echo "8 - Daha gizli port versiyon taraması"
						echo ""
						echo "99 - Çıkış"
						echo ""
						echo "=============================="
						echo ""
						read -p "-İşlem-> " nmap_select
						
						if [[ "$nmap_select" = "1"  ]] ; then
							clear
							echo "=============================="
							echo ""
							read -p "Taranacak ip adresini giriniz -> " nmap_ip
							echo ""
							clear  
							echo ""
							echo "$nmap_ip'adresine ait ilk 1000 port stndart şekilde taranıyor....!"
							echo ""
							echo "=============================="
							echo ""
							nmap -Pn $nmap_ip
							echo ""
							echo "=============================="
							echo ""
							read -p "Çıkmak için ENTER"
						elif [[ "$nmap_select" = "2" ]] ; then
							clear 
							echo "=============================="
							echo ""
							read -p "Taranacak ip adresini giriniz -> " nmap_ip
							echo ""
							clear 
							echo ""
							echo "$nmap_ip'adresi os ve port versiyonları için taranıyor...!"
							echo ""
							echo "=============================="
							nmap -Pn -sV -v $nmap_ip
							echo ""
							echo "=============================="
							echo ""
							read -p "Çıkmak için ENTER"
						elif [[ "$nmap_select" = "3" ]] ; then
							clear 
							echo "=============================="
							echo ""
							read -p "Taranacak ip adresini giriniz -> " nmap_ip
							echo ""
							clear 
							echo ""
							echo "$nmap_ip'adresi tüm portları ayrıntılı taranıyor ( Bu işlem çok uzun sürebilir.! )"
							echo ""
							echo "=============================="
							nmap -Pn -sV -v -A -p- $nmap_ip
							echo ""
							echo "=============================="
							echo ""
							read -p "Çıkmak için ENTER"
						
						elif [[ "$nmap_select" = "4" ]] ; then 
							clear 
							echo "=============================="
							echo ""
							read -p "Taranacak ip adresini giriniz -> " nmap_ip
							echo ""
							clear 
							echo ""
							echo "$nmap_ip'adresine ait en yaygın 100 port taranıyor...!"
							echo "" 
							echo "=============================="
							nmap -Pn -sV -v -F $nmap_ip
							echo ""
							echo "=============================="
							echo ""
							read -p "Çıkmak için ENTER"
						
						elif [[ "$nmap_select" = "5" ]] ; then
							clear 
							echo "=============================="
							echo ""
							read -p "Taranacak ip adresini giriniz -> " nmap_ip
							echo ""
							clear 
							echo ""
							echo "$nmap_ip'adresine ait en yaygın 500 port taranıyor...!"
							echo ""
							echo "=============================="
							nmap -Pn -sV -v -top-ports 500 $nmap_ip
							echo ""
							echo "=============================="
							echo ""
							read -p "Çıkmak için ENTER" 
						elif [[ "$nmap_select" = "6" ]] ; then 
							clear 
							echo "=============================="
							echo ""
							read -p "Taranacak ip adresini giriniz -> " nmap_ip
							echo ""
							clear 
							echo ""
							echo "$nmap_ip'adresi tam ayrıntılı agresif tarama ile taranıyor...!"
							echo ""
							echo "=============================="
							nmap -Pn -sV -v -A $nmap_ip
							echo ""
							echo "=============================="
							echo ""
							read -p "Çıkmak için ENTER"
						elif [[ "$nmap_select" = "7" ]] ; then 
							clear 
							echo "=============================="
							echo ""
							read -p "Taranacak ip adresini giriniz -> " nmap_ip
							echo ""
							clear 
							echo ""
							echo "$nmap_ip'adresine agresif port versiyon taraması yapılıyor...!"
							echo ""
							echo "=============================="
							nmap -Pn -sV -A $nmap_ip
							echo ""
							echo "=============================="
							echo ""
							read -p "Çıkmak için ENTER"
						elif [[ "$nmap_select" = "8" ]] ; then
							clear 
							echo "=============================="
							echo ""
							read -p "Taranacak ip adresini giriniz -> " nmap_ip
							echo ""
							clear 
							echo ""
							echo "$nmap_ip'adresine daha gizli port taraması yapılıyor...!"
							echo ""
							echo "=============================="
							nmap -Pn -sV $nmap_ip
							echo ""
							echo "=============================="
							echo ""
							read -p "Çıkmak için ENTER"
						elif [[ "$nmap_select" = "99" ]] ; then 
							echo "Çıkış yapılıyor...!"
							sleep 1
							break
						elif [[ "$nmap_select" = "0" ]] ; then
							clear 
							echo "=============================="
							echo ""
							nmap -V
							echo ""
							echo "=============================="
							echo ""
							read -p "Çıkmak için ENTER"
						else 
							echo "Bilinmeyen girdi...!"
							sleep 1
							clear 
						fi
							
					done 
				else 
					echo "nmap kuruluyor...!"
					echo ""
					mkdir $HOME/Hack-Tools/nmap
					pkg install nmap -y
					sleep 1
					clear 
					echo "=============================="
					echo ""
					echo "Tool başarıyla kuruldu...!"
					echo "Toolu menüden başlatabilirsiniz...!"
					echo ""
					echo "=============================="
					sleep 1
					echo ""
					read -p "Devam etmek için ENTER"
				fi
			elif [[ "$hack_islem" = "99" ]] 
			then 
				clear 
				echo "Çıkış yapılıyor....!"
				sleep 1
				break
				
				
			else 
				echo "Bilinmeyen girdi !"
				sleep 1
				clear 
			fi	
			#hack tools bitiş noktası				
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
		echo "Bilinmeyen girdi...!"
		sleep 2
	fi
	clear
		
done 
	
