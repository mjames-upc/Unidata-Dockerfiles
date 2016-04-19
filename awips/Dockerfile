FROM centos:centos6

RUN yum update yum

# Set up awips directory

RUN mkdir /home/awips

ENV HOME /home/awips

WORKDIR /home/awips

# Output directory

RUN mkdir /tmp/output

# Install 

COPY install_awips.sh /home/awips/
COPY Dockerfile /home/awips/
RUN /home/awips/install_awips.sh 
RUN echo '. /etc/profile.d/awips2.sh' >> ~/.bashrc
CMD ["/bin/bash", "edex start"]
