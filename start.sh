#/bin/bash
echo "start building"
PID=$(lsof -i :10001 | grep 10001 | awk '{print $2}')
if [[ -n $PID ]];then
	echo "prepare to kill pid - $PID"
	kill -9 $PID
	echo "finish killing pid - $PID"
fi
echo "start compiling"
mvn clean package spring-boot:repackage
echo "start executing"
nohup java -jar target/jenkins-demo-1.0.0.jar >/dev/null 2>&1 &
echo "project is running now"
