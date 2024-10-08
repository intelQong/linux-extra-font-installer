#!/bin/bash
bold=$(tput bold)
normal=$(tput sgr0)

echo "${bold}--------------------------------"
echo "|                              |"
echo "|    Linux Fonts Installer     |"
echo "|  https://github.com/ujaRHR   |"
echo "|                              |"
echo "--------------------------------${normal}"
echo " Forked by intelQong "
echo ""
echo "Checking if all tools are installed..."

# Check if wget installed, if not, then install
if ! command -v wget &> /dev/null
then
    echo "✗ wget not found, installing wget..."  
    # If package manager is apt, then install wget using apt
    if ! command -v apt &> /dev/null
    then
      sudo dnf -y install wget
      echo "✓ Successfully installed wget!"
    # If package manager is yum, then install wget using yum
    elif ! command -v yum &> /dev/null
    then
      sudo apt install wget -y
      echo "✓ Successfully installed wget!"
    else
      echo "✗ wget not found, and neither apt nor yum are installed!"
      echo "✗ Please install wget manually!"
    fi
else
  echo "Dependency fulfilled "
fi


fetchFonts="https://raw.githubusercontent.com/intelqong/linux-extra-font-installer/main/root/fonts.tar.xz"
fontsDir="/home/$USER/.fonts"

# Check if the directory exists, if not, then create it.
if [ ! -d "$fontsDir" ]; then
  mkdir -p $fontsDir;
else
  echo "✓ Fonts Directory exists. Superb!"
fi

echo -e "↻ Downloading file...\n"

cd $fontsDir;
/usr/bin/wget -q $fetchFonts

# Check if the file exists and extract it
cd $fontsDir"/"
if [ -f fonts.tar.xz ];
then
    echo -e "↻ Installing !\n";
    tar -xf fonts.tar.xz;
    rm fonts.tar.xz;
else
    echo -e "✗ Something went wrong! Try again...✗\n";
    exit;
fi

echo -e "\n✓ ${bold}Download and Installation Complete !!!"
echo -e "✓ Please restart your computer to see the changes.\n"
echo -e "❤ ${normal}Thank you for using Linux Extra Fonts Installer!"
echo -e "❤ Created by Reajul Hasan Raju"
echo -e "❤ https://github.com/ujaRHR"
echo -e "❤ Updated by intelQong"

