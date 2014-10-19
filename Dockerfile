FROM wpic/java8 
MAINTAINER Hamed Abdollahpour <ha.hamed@gmail.com>
RUN wget http://mirrors.gigenet.com/apache/maven/maven-3/3.2.3/binaries/apache-maven-3.2.3-bin.tar.gz
RUN tar xvfz apache-maven-3.2.3-bin.tar.gz
RUN mv apache-maven-3.2.3 /opt/
RUN ln -s /opt/apache-maven-3.2.3 /opt/maven
ENV M2_HOME /opt/maven
ENV PATH $M2_HOME/bin:$PATH
