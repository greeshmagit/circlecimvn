FROM tomcat:9
LABEL app=circlemvn
COPY /target/cimvn.war /usr/local/tomcat/webapps/cimvn.war
