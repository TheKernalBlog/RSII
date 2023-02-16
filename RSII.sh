#!/bin/bash

GREEN='\033[0;32m'
RED='\e[1;31m'
NOPE='\033[0m'

sudo apt install fonts-firacode feh picom arandr xfce4-terminal thunar i3 git zathura

git clone https://github.com/TheKernalBlog/ReasonableSystemInstall-Inator

mv ~/ReasonableSystemInstall-Inator/alaska.jpg ~/Pictures/

mkdir ~/.vim/

mv ~/ReasonableSystemInstall-Inator/vimrc ~/.vimrc

mv ~/ReasonableSystemInstall-Inator/autoload/ ~/.vim/

mv ~/ReasonableSystemInstall-Inator/i3/ ~/.config/

mv ~/ReasonableSystemInstall-Inator/i3status/ ~/.config/

mv ~/ReasonableSystemInstall-Inator/vimrc ~/.vimrc

echo -e " $GREEN Would you like to use a GUI to configure multiple monitors? (y/n) $NOPE " 
read RANDR
if [[ $RANDR == "y" || $RANDR == "Y" || $RANDR == "yes" || $RANDR == "Yes" ]]
then 
        echo -e "$RED Configure your monitors, and save your layout as monitor.sh in ~/.screenlayout $NOPE"
       	arandr 
else 
	echo " : ) " 
fi 

sleep 2s 

echo -e " $GREEN Type 'y' when you're ready to move on $NOPE " 
read TIME
if [[ $TIME == "y" || $TIME == "Y" || $TIME == "yes" || $TIME == "Yes" ]]
then 

echo -e  " $GREEN Hold tight while your Vim plugins are installed $NOPE " 

sleep 2s 

vim -c "PlugInstall|q|q"

sleep 3s

echo -e " $GREEN Are you currently using a GUI? (y/n) $NOPE " 
read GUI
if [[ $GUI == "y" || $GUI == "Y" || $GUI == "yes" || $GUI == "Yes" ]] 
then

echo -e " $GREEN You're done! Read more about your new system! $NOPE "
zathura ~/ReasonableSystemInstall-Inator/GUIDE.pdf 

else 

echo -e " $GREEN You're done! Use startx to login and read the guide. $NOPE " 
fi 
 
fi 
