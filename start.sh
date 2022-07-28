#/bin/bash
pid=`lsof -i :10001 | grep 10001 | awk '{print $2}'`
echo "pid=$pid"
if [ -n $pid ]; then
	kill -9 $pid
	echo "$pid has been killed."
fi
echo "Start compiling."
mvn clean package spring-boot:repackage
echo "Start executing."
nohup java -jar target/jenkins-demo-1.0.0.jar >/dev/null 2>&1 &
echo "Project is running now."
