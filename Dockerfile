FROM tomcat:9
LABEL app=circlemvn
COPY /home/circleci/project/target/cimvn.war /usr/local/tomcat/webapps/cimvn.war
