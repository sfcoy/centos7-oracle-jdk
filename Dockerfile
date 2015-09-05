FROM jboss/base:latest
MAINTAINER Stephen Coy steve.coy@me.com

# User root user to install software
USER root

ENV JDK_VERSION=7u79 JDK_BUILD=b15

# Install necessary packages
RUN curl --remote-name --silent --insecure --location --cookie "oraclelicense=accept-securebackup-cookie" \
    http://download.oracle.com/otn-pub/java/jdk/$JDK_VERSION-$JDK_BUILD/jdk-$JDK_VERSION-linux-x64.rpm \
 && yum install -y jdk-$JDK_VERSION-linux-x64.rpm \
 && yum clean all \
 && rm jdk-$JDK_VERSION-linux-x64.rpm

# Switch back to jboss user
USER jboss

# Set the JAVA_HOME variable to make it clear where Java is located
ENV JAVA_HOME=/usr/java/latest
