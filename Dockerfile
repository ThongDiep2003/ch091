FROM tomcat:9.0.80-jdk17-temurin-jammy
RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN rm -rf /usr/local/tomcat/webapps/examples
ADD ch091.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]