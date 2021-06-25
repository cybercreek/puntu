echo -e "\033[0;31m ~~~ Puntu >> Installer ~~~ With love from strotic <3\033[0;31m"

# Just a lil color guide :)
Blue='\033[0;34m'         # Blue



echo -e "${Blue}Puntu is getting this ready . . . ."
sleep 2

echo -n "Fetching ported package :)" wget https://github.com/shiftkey/desktop/releases/download/release-2.6.3-linux1/GitHubDesktop-linux-2.6.3-linux1.deb > /dev/null; echo "Pakcage fetched perfectly!"

REQUIRED_PKG="gdebi-core"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "requirement is already satisfied :)")
echo Checking for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
  sudo apt-get --yes install $REQUIRED_PKG 
fi

sleep 2

echo -n "Setting up Github Desktop"  gdebi GitHubDesktop-linux-2.6.3-linux1.deb > /dev/null; echo "Github Desktop installed succesfully :D"

sleep 2

echo " To run Github desktop, you can type github in the terminal to launch the application!"
sudo su -i; exit


