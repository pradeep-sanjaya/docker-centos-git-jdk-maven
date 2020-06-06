FROM centos

# Execute system update
#RUN yum -y update && yum -y install git && yum clean all
RUN yum -y install git && yum clean all

ENV JAVA_VERSION="8u131" \
    BUILD_VERSION="b11" \
    JAVA_HOME="/usr/java/jdk1.8.0_131" \
    MAVEN_HOME="/opt/apache-maven-3.6.3" \
    M2_HOME="/opt/apache-maven-3.6.3" \
    PATH="/usr/java/jdk1.8.0_131/bin:/opt/apache-maven-3.6.3/bin:${PATH}"

RUN curl -L -b "oraclelicense=a" http://download.oracle.com/otn-pub/java/jdk/$JAVA_VERSION-$BUILD_VERSION/d54c1d3a095b4ff2b6607d096fa80163/jdk-$JAVA_VERSION-linux-x64.rpm > /tmp/jdk-8-linux-x64.rpm && \
    rpm -i /tmp/jdk-8-linux-x64.rpm && \
    rm -f /tmp/jdk-8-linux-x64.rpm

#install maven
RUN curl -O https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz && \
    tar xzf apache-maven-3.6.3-bin.tar.gz -C /opt && \
    rm -f apache-maven-3.6.3-bin.tar.gz
