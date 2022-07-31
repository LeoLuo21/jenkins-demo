pid=`lsof -t -i:10001`
if [ -n "$pid" ]; then
	kill -9 $pid
fi
mvn clean package spring-boot:repackage
java -jar target/jenkins-demo-1.0.0.jar > /dev/null 2>&1 &


