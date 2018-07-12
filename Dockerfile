FROM goodrainapps/tomcat:8.5.20-jre8-alpine

COPY docker-entrypoint.sh /

COPY xxx.war  /usr/local/tomcat/webapps/ROOT.war

RUN chmod +x /docker-entrypoint.sh

RUN  rm -rf /usr/local/tomcat/webapps/ROOT && mkdir -p /usr/local/tomcat/webapps/ROOT

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["catalina.sh", "run"]