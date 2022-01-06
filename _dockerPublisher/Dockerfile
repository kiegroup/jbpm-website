############################################################################
# Dockerfile publishes jbpm-website and installs all required software
############################################################################

####### BASE #################
FROM fedora:35

####### MAINTAINER ############
MAINTAINER "Michael Biarnes Kiefer <mbiarnes@redhat.com>"

### swith to root user ###
USER root

### Install ruby dependencies
RUN dnf install -y ruby rubygems rubygem-rake rubygem-bundler ruby-devel \
## Install tools \
    rpm-build gcc-c++ make rsync openssh-clients openssh-server net-tools iputils wget

RUN dnf clean all

RUN bash -l -c "gem install bundler awestruct"

RUN groupadd -g 10000 jenkins
RUN useradd -m jenkins -g jenkins --shell /bin/bash

#change permissions in sudoers [whell group is the only group existing in sudoers file: add user jenkins there so he is sudo and can
#do changes in the docker container without having to edit a password
RUN usermod -a -G wheel jenkins
RUN sed -i 's/# %wheel	ALL=(ALL)	NOPASSWD: ALL/%wheel	ALL=(ALL)	NOPASSWD: ALL/g' /etc/sudoers

USER jenkins

# Create a dir for copying all secrets
RUN mkdir /home/jenkins/.ssh

WORKDIR /home/jenkins/

RUN wget https://github.com/kiegroup/jbpm-website/archive/main.zip
RUN unzip main.zip

ENV HOME /home/jenkins
ENV LANG en_US.UTF-8

EXPOSE 4242

CMD ["bash","--login", "rake"]
