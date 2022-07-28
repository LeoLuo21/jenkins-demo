#/bin/bash
BUILD_ID=dontKillMe
echo "start building"
PIDS=$(lsof -i :10001 | grep 10001 | awk '{print $2}')
for pid in $PIDS
do
	kill -9 $pid
done
echo "start compiling"
mvn clean package spring-boot:repackage
echo "start executing"
nohup java -jar target/jenkins-demo-1.0.0.jar >/dev/null 2>&1 &
echo "project is running now"
