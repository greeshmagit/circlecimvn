FROM tomcat:9
LABEL app=circlecimvn
COPY /target/cimvn.war /usr/local/tomcat/webapps/cimvn.war
