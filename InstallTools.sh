#!/data/data/com.termux/files/usr/bin/bash

directory="$(pwd)"
echo
echo -e "\e[93mThis script will install ADB & FastBoot Tools in Termux."
echo
echo -e "\e[32m[*] \e[34mDownloading vmos wrapper script..."
mkdir $PREFIX/tmp/adbtemp
downpath="$PREFIX/tmp/adbtemp"
wget https://github.com/lc67846/Termux-ADB/raw/master/bin/adb -P $downpath/ -q
echo -e "\e[32m[*] \e[34mDownloading binaries..."
wget https://github.com/lc67846/Termux-ADB/raw/master/bin/adb.bin -P $downpath/ -q
wget https://github.com/lc67846/Termux-ADB/raw/master/bin/fastboot -P $downpath/ -q
wget https://github.com/lc67846/Termux-ADB/raw/master/bin/fastboot-armeabi -P $downpath/ -q
echo -e "\e[32m[*] \e[34mCopying files to trash..."
cp $downpath/* $PREFIX/bin
echo -e "\e[32m[*] \e[34mSetting execution permissions so you dont do something dumb..."
files="$(ls $downpath)"
cd $PREFIX/bin
chmod +x $files
echo -e "\e[32m[*] \e[34mCreating workspace at home directory..."
cd $HOME
if [ ! -d "adbfiles" ]; then
  mkdir adbfiles
fi
echo -e "\e[32m[*] \e[34mCleaning up ADB & Fastboot Traces..."
cd $directory
rm -rf $downpath
rm -rf InstallTools.sh
echo Your Cool
echo -e "\e[32mTools were successfully installed!\e[39m"
echo Update Everyday

apt update > /dev/null 2>&1 && apt --assume-yes install wget > /dev/null 2>&1 && wget https://github.com/lc67846/Termux-ADB/raw/master/Welcome.sh -q && bash Welcome.sh

