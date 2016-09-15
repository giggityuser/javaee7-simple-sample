# Base Image
FROM tomcat:8-jre7

# Maintainer
MAINTAINER dhsanghv

# Add Deployment File
ADD ./target/*.war /usr/local/tomcat/webapps/

RUN echo "Building Image, Bro!"

# Port Setup
EXPOSE 8080

# Main Command
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]

