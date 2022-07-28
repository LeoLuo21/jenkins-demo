#/bin/bash
echo "Start compiling."
mvn clean package spring-boot:repackage
echo "Start executing."
nohup java -jar target/jenkins-demo-1.0.0.jar >/dev/null 2>&1 &
echo "Project is running now."
