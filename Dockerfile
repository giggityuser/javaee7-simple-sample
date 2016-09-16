# Base Image
FROM tomcat:8-jre7

# Maintainer
MAINTAINER dhsanghv

# Add Deployment File
ADD ./target/*.war /usr/local/tomcat/webapps/

RUN echo "Building Image, Bro!"

# Port Setup
EXPOSE 8080

# Recursively grant ownership of the directory /usr/local/tomcat, and all files and subdirectories, to user root.
RUN chown -R root:root /usr/local/tomcat &&\
    chmod -R g+rw /usr/local/tomcat

# Main Command
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]

