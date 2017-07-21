FROM tomcat:8.5.16-jre8-alpine
MAINTAINER Mindaugas Vidmantas "mindaugas.vidmantas@bl.uk"
ENV SOLR_USERNAME="none"
ENV SOLR_PASSWORD="none"
RUN rm -rf /usr/local/tomcat/webapps/examples /usr/local/tomcat/webapps/docs /usr/local/tomcat/webapps/ROOT /usr/local/tomcat/webapps/manager /usr/local/tomcat/webapps/host-manager
COPY ./ukwa-ui-1.4.2.RELEASE.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080 8080
CMD ["catalina.sh", "run"]
