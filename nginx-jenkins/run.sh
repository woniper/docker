sudo docker pull jenkins
sudo mkdir -p jenkins_home
sudo docker run -p 8080:8080 -p 50000:50000 --name jenkins -v jenkins_home:/var/jenkins_home jenkins
sudo docker build -t nginx-jenkins .
sudo docker run -p 80:80 --name web --link jenkins:jenkins -d nginx-jenkins
