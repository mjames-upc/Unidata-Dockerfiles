FROM centos:centos6

RUN yum update yum
RUN yum install wget openssh-clients unzip zenity bc -y

# Set up
RUN groupadd fxalpha
RUN useradd -ms /bin/bash -G fxalpha awips
ENV HOME /home/awips
WORKDIR /home/awips
RUN mkdir /tmp/output

# Install 
COPY install_cave.sh /home/awips/
RUN /home/awips/install_cave.sh 

COPY Dockerfile /home/awips/
COPY run_cave.sh /home/awips/
COPY README.md /home/awips/

CMD /home/awips/run_cave.sh

