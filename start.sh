#/bin/bash
PID=$(lsof -i :10001 | grep 10001 | awk '{print $2}')
if [ -n $PID ]; then
	kill -9 $PID
	echo "Original Process ID - $PID has been killed."
fi
echo "Start compiling."
mvn clean package spring-boot:repackage
echo "Start executing."
nohup java -jar target/jenkins-demo-1.0.0.jar >/dev/null 2>&1 &
echo "Project is running now."
