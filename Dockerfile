FROM tomcat:8.5.16-jre8-alpine
MAINTAINER Mindaugas Vidmantas "mindaugas.vidmantas@bl.uk"

ENV SOLR_USERNAME="none"
ENV SOLR_PASSWORD="none"

RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]
COPY ./ukwa-ui-1.4.2.RELEASE.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]
