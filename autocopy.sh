#!/bin/sh

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

####################################
# custom copy script for dotfiles#
####################################

echo '##################################################################'
echo '# ****copying in 5 sec... CTRL+C to abort****                ##'
echo '##################################################################'
sleep 6
echo ' '
echo '>>>Transfering all old dotfiles from home to custom folder. Do not abort!!!'
mkdir /old_files
mkdir /old_files/fonts
echo '>>.i3 directory'
cp -r /home/limeflash/.i3/ /home/limeflash/manjaro/old_files/.i3/
echo '>>.aur directory'
cp -r /home/limeflash/.aur/ /home/limeflash/manjaro/old_files/
echo '>>.zshrc'
cp -r /home/limeflash/.zshrc /home/limeflash/manjaro/old_files/
echo '>>.bahsrc'
cp -r /home/limeflash/.bashrc /home/limeflash/manjaro/old_files/
echo '>>.Xresources'
cp -r /home/limeflash/.Xresources /home/limeflash/manjaro/old_files/
echo '>>.oh-my-zsh'
cp -r /home/limeflash/.oh-my-zsh /home/limeflash/manjaro/old_files/
echo '>>>Transfering Documents. Do not abort!!!'
cp -r /home/limeflash/Documents /home/limeflash/manjaro/old_files/
echo '>>>Transfering Pictures. Do not abort!!!'
cp -r /home/limeflash/Pictures /home/limeflash/manjaro/old_files/
echo '>>>Transfering Fonts. Do not abort!!!'
cp -r /home/limeflash/.local/share/fonts /home/limeflash/manjaro/old_files/fonts
echo '>>>Transfering .config. Do not abort!!!'
cp -a /home/limeflash/.config/BraveSoftware/ /home/limeflash/manjaro/old_files/.config
cp -a /home/limeflash/.config/Code*/ /home/limeflash/manjaro/old_files/.config
cp -a /home/limeflash/.config/nitrogen/ /home/limeflash/manjaro/old_files/.config
cp -a /home/limeflash/.config/rofi/ /home/limeflash/manjaro/old_files/.config
cp -a /home/limeflash/.config/polybar/ /home/limeflash/manjaro/old_files/.config
cp -a /home/limeflash/.config/VSCodium/ /home/limeflash/manjaro/old_files/.config
cp -r /home/limeflash/.config/compton.conf /home/limeflash/manjaro/old_files/.config/compton.conf 
cp -r /home/limeflash/.config/i3-scrot.conf /home/limeflash/manjaro/old_files/.config/i3-scrot.conf
echo 'xxx Deleting not neccesary files. Do not abort!!!'

echo 'all finished!'