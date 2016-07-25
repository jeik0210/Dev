#!/bin/bash
sudo apt-get update 
zenity --info --title="devAcademy" --text="ingresa tus credenciales mysql"
sudo apt-get install mysql-server -y
if (`zenity --question --text="continuar instalación"`)
then
(
echo "10" ; sleep 1
echo "# instalando ruby ..." ; sleep 1
rbenv install 2.3.1
rbenv global 2.3.1
zenity --notification\
    --window-icon="info" \
    --text="se ha instalado ruby "
gem install rails
#sudo gem install pg
sudo gem update --system
sudo gem update
zenity --notification\
    --window-icon="info" \
    --text="se ha instalado ruby on rails"
echo "20" ; sleep 1
echo "# instalando screenfetch..." ; sleep 1
sudo apt-get install screenfetch -y
echo "30" ; sleep 1
echo "# instalando vim..." ; sleep 1
sudo apt-get install vim -y
zenity --notification\
    --window-icon="info" \
    --text="se ha instalado vim"
sudo apt-get update 
echo "45" ; sleep 1
echo "# instalando postgresql..." ; sleep 1
sudo apt-get install postgresql postgresql-client postgresql-contrib libpq-dev -y
#zenity --info --title="devAcademy" --text="Ingresa tu usuario a PostgreSQL"
sudo -u postgres createuser --interactive
zenity --notification\
    --window-icon="info" \
    --text="se ha instalado PostgreSQL"
echo "50" ; sleep 1
echo "# instalando libreria npm..." ; sleep 1
sudo apt-get install npm -y
#sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql -y
#sudo apt-get install php-cli -y
#sudo apt-get install composer -y
zenity --notification\
    --window-icon="info" \
    --text="se ha instalado npm..."
echo "60" ; sleep 1
echo "# instalando mysql..." ; sleep 1
sudo dpkg --configure -a
#sudo apt-get install mysql-server -y
zenity --notification\
    --window-icon="info" \
    --text="se ha instalado mysql"
sudo apt-get update
echo "100" ; sleep 1
echo "# completado" ; sleep 1
zenity --info --title="devAcademy" --text="La instalación a finalizado correctamente"
figlet devAcademy -c
screenfetch
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
