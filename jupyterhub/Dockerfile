FROM jupyter/jupyterhub

MAINTAINER Ryan May <rmay@ucar.edu>

# Install oauthenticator and dockerspawner from git
RUN pip3 install git+git://github.com/jupyter/oauthenticator.git
RUN pip3 install git+git://github.com/jupyter/dockerspawner.git

# Create oauthenticator directory and put necessary files in it
RUN mkdir /srv/oauthenticator
WORKDIR /srv/oauthenticator
ENV OAUTHENTICATOR_DIR /srv/oauthenticator
ADD userlist /srv/oauthenticator/userlist
ADD ssl /srv/oauthenticator/ssl
RUN chmod 700 /srv/oauthenticator
ADD nesteddockerspawner.py /srv/jupyterhub/nesteddockerspawner.py

# Are these only needed for local?
ADD addusers.sh /srv/oauthenticator/addusers.sh
RUN ["sh", "/srv/oauthenticator/addusers.sh"]

# Eventually, this should just be relying upon github
RUN echo dopplershift:hackme | chpasswd