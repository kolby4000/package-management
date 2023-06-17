# Steps for Installing tomcat10 on rhel7&8
# install Java JDK 1.8+ as a pre-requisit for tomcat to run.
# https://github.com/LandmakTechnology/package-management/tree/main/Tomcat-installation
sudo hostnamectl set-hostname tomcat
cd /opt
sudo yum install git wget vim -y
sudo yum install java-1.8.0-openjdk-devel -y
# Download tomcat software and extract it.
# dowanload and extract tomcat software
sudo wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.10/bin/apache-tomcat-10.1.10.tar.gz
sudo tar -xvf apache-tomcat-10.1.10.tar.gz
sudo rm apache-tomcat-10.1.10.tar.gz
sudo mv apache-tomcat-10.1.10 tomcat10
sudo chmod 777 -R /opt/tomcat10
sudo sh /opt/tomcat10/bin/startup.sh
# create a soft link to start and stop tomcat from anywherecurl -v localhost:8080

# to manage tomcat as a service
sudo ln -s /opt/tomcat10/bin/startup.sh /usr/bin/starttomcat
sudo ln -s /opt/tomcat10/bin/shutdown.sh /usr/bin/stoptomcat
sudo starttomcat
echo "end on tomcat installation"
sudo su - ec2-user
