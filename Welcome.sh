echo -e "\e[32mWelcome To Termux ADB Version 1.1\e[39m"
echo Whats New
apt update > /dev/null 2>&1 && apt --assume-yes install wget > /dev/null 2>&1 && wget https://github.com/lc67846/Termux-ADB/raw/master/changelog.sh -q && bash changelog.sh
