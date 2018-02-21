FROM openjdk:8-jdk-alpine
#VOLUME /tmp
#VOLUME /opt/tomcat/apache-tomcat-8.5.28/webapps/
ARG JAR_FILE
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
