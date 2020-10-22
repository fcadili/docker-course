FROM tomcat:9-jdk11-openjdk-slim
EXPOSE 8080
RUN rm -rf /usr/local/tomcat/webapps/ROOT.war
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
CMD ["catalina.sh", "run"]