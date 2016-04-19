#!/bin/sh

wget -O /etc/yum.repos.d/awips2.repo http://www.unidata.ucar.edu/software/awips2/doc/awips2.repo
yum clean all
yum groupinstall awips2-server -y
rm install_awips.sh
