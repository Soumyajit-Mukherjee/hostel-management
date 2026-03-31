FROM tomcat:11.0-jdk21
RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN rm -rf /usr/local/tomcat/webapps/ROOT.war
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 3306
CMD ["catalina.sh", "run"]
