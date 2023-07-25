#!/bin/bash

# sudo apt update -y
# sudo apt install wget unzip zip -y
sysctl vm.max_map_count
sysctl fs.file-max
ulimit -n
ulimit -u
# sudo apt-get install openjdk-11-jdk -y

# sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
# wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | sudo apt-key add -
# sudo apt install postgresql postgresql-contrib -y
# sudo systemctl enable postgresql
# sudo systemctl start postgresql

sudo -u postgres psql -c "CREATE USER $1 WITH PASSWORD '$2';"
sudo -u postgres psql -c "CREATE DATABASE $3 OWNER $1;"
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE $3 to $1;"

# cd /opt 
# sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-7.6.zip
# sudo unzip sonarqube-7.6.zip
# sudo mv sonarqube-7.6 sonarqube

