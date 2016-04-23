FROM centos:centos6

RUN yum update yum
RUN yum install wget -y

# Set up
RUN groupadd fxalpha
RUN useradd -ms /bin/bash -G fxalpha awips
RUN mkdir -p /awips2/data_store
ENV HOME /home/awips
WORKDIR /home/awips
RUN mkdir /tmp/output

# Install 
COPY install_edex.sh /home/awips/
RUN /home/awips/install_edex.sh 

COPY Dockerfile /home/awips/
COPY run_edex.sh /home/awips/
COPY README.md /home/awips/

RUN echo '. /etc/profile.d/awips2.sh' >> ~/.bashrc
RUN echo 'awips soft nproc 65536' >> /etc/security/limits.conf
RUN echo 'awips soft nofile 65536' >> /etc/security/limits.conf

#CMD ["/bin/bash", "/awips2/tools/bin/edex start"]
CMD /home/awips/run_edex.sh

