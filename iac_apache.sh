echo "Qual o site do repositório? "
read site_repo;

echo -e "Atualizando sistema...\n"
apt-get update
apt-get upgrade -y

echo -e "Instalando Apache...\n"
apt-get install apache2 -y

echo -e "Baixando arquivos do repositório... \n"
wget -c -P /temp/ $site_repo

echo -e "Instalando unzip... \n"
apt-get install unzip -y

echo -e "Extraindo aquivo para pasta TEMP... \n"
unzip /temp/main.zip -d /temp/

rm -rf /var/www/html/index.html

echo "Copiando repositório para renderizar no Apache..."
cp -r /temp/linux-site-dio-main/* /var/www/html/


