#!/data/data/com.termux/files/usr/bin/bash
# Ask the user for their name
echo Hello, who am I talking to?
read varname
echo It\'s sad to see you go $varname
echo
# Ask the user for login details
echo Plese Verify Before Uninstalling
# Read Password
echo -n Password: 
read -s termux-adb-uninstall
echo
# Run Command
echo $password

echo Thankyou $uservar We Will Start Uninstalling
echo -e "\e[93mThis script will remove ADB & FastBoot Tools from Termux."
echo
echo -e "\e[32m[*] \e[34mRemoving wrapper script..."
rm -rf $PREFIX/bin/adb
echo -e "\e[32m[*] \e[34mRemoving binaries..."
rm -rf $PREFIX/bin/adb.bin $PREFIX/bin/fastboot $PREFIX/bin/fastboot-armeabi
echo -e "\e[32m[*] \e[34mRemoving keys..."
case `find $HOME/adbfiles -type f | wc -l` in
0 | 2)
  rm -rf $HOME/adbfiles ;;
*)
  rm -rf $HOME/adbfiles/adbkey $HOME/adbfiles/adbkey.pub ;;
esac
echo -e "\e[32m[*] \e[34mCleaning up..."
rm -rf RemoveTools.sh
echo
echo -e "\e[32mTools were successfully uninstalled!\e[39m"
echo
