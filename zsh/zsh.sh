#!/bin/sh
sudo apt-get update 
sudo apt-get install zsh -y

sudo chown -R $USER:$USER ./.*

cp -r $(ls -a | grep ^[\.] | tail -n 4 | tr '\n' ' ') $HOME

sudo cp ./font/'MesloLGS NF Regular.ttf' /usr/local/share/fonts/

chsh --shell /bin/zsh $USER

echo “ZSH kurulumu ve dosyaların koplanması bitt,i kullanıcıdan çıkış yapacaksınız.”

echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'

gnome-session-quit --no-prompt

