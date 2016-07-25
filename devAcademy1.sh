#!/bin/bash
zenity --info --title="devAcademy" --text="Bienvenido¡ Es importante actualizar su sistema"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install figlet -y
sudo apt-get install fortune cowsay
sudo add-apt-repository ppa:webupd8team/sublime-text-3 
sudo apt-get install curl
sudo apt-get install zsh -y
curl -L http://install.ohmyz.sh | sh
figlet devAcademy -c
if (`zenity --question --text="estas listo"`)
then
(
echo "10" ; sleep 1
echo "# instalando apache..." ; sleep 1
sudo apt-get install apache2 -y
zenity --notification\
    --window-icon="info" \
    --text="se ha instalado apache"
echo "25" ; sleep 1
echo "# instalando git" ; sleep 1
sudo apt-get install git -y 
zenity --notification\
    --window-icon="info" \
    --text="se ha instalado git..."
echo "35" ; sleep 1
echo "# instalando tmux..." ; sleep 1
sudo apt-get install tmux -y
echo "40" ; sleep 1
echo "# instalando ssh..." ; sleep 1
sudo apt-get install openssh-server -y
echo "50" ; sleep 1
echo "# instalando sshfs..." ; sleep 1
sudo apt-get install sshfs
echo "66" ; sleep 1
echo "# instalando nodejs..." ; sleep 1
sudo apt-get install nodejs -y
echo "75" ; sleep 1
echo "# instalando nmap..." ; sleep 1
sudo apt-get install nmap -y
zenity --notification\
    --window-icon="info" \
    --text="se ha instalado ssh y nodejs"
echo "80" ; sleep 1
echo "# instalando curl..." ; sleep 1
sudo apt-get install curl
echo "85" ; sleep 1
echo "# instalando zsh " ; sleep 1
#sudo apt-get install zsh -y
#curl -L http://install.ohmyz.sh | sh
sudo apt-get update 
echo "89" ; sleep 1
echo "# instalando sublime text..." ; sleep 1
sudo apt-get install sublime-text-installer
zenity --notification\
    --window-icon="info" \
    --text="se ha instalado sublime text y zsh"
echo "90" ; sleep 1
echo "# instalando  heroku..." ; sleep 1
wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh 
zenity --notification\
    --window-icon="info" \
    --text="se ha instalado heroku"
echo "95" ; sleep 1
echo "# instalando  rbenv..." ; sleep 1
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-b$
git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/$
sudo apt-get install -y libssl-dev libreadline-dev zlib1g-dev
zenity --notification\
    --window-icon="info" \
    --text="se ha instalado rbenv"
echo "100" ; sleep 1
echo "# completado devAcademy1.sh" ; sleep 1
zenity --info --title="devAcademy" --text="La instalación a finalizado correctamente"
zenity --info --title="devAcademy" --text="instala el siguiente Script"
exec $SHELL
) |
zenity --progress \
  title="Actualizando los registros del sistema" \
  text="Rastreando los registros de los correos..." \
  percentage=0
if [ "$?" = -1 ] ; then
zenity --error \
text="Actualización cancelada."
fi
else
figlet devAcademy -c
fortune | cowsay -f tux -t ¿Que paso ?
fi




