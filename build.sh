pid=`ps -ef | grep jenkins-demo | grep -v grep | awk '{print $2}'`
if [ -n "$pid" ]; then
	kill -9 $pid
fi
mvn clean package spring-boot:repackage
nohup java -jar target/jenkins-demo-1.0.0.jar > /dev/null 2>&1 &


