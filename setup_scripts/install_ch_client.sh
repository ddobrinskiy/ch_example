# https://unix.stackexchange.com/a/15420/209202
clickhouse-client --version
if [ "$?" -eq "0" ]
then
 echo ">>> clickhouse-client already installed"
else
 echo '>>> Installing clickhouse-client'
 sudo apt-get install dirmngr
 sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv E0C56BD4
 echo "deb http://repo.yandex.ru/clickhouse/deb/stable/ main/" | sudo tee /etc/apt/sources.list.d/clickhouse.list
 sudo apt-get update
 sudo apt-get install -y clickhouse-client
fi
