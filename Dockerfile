FROM ubuntu:16.04
MAINTAINER Chris Roberson <chris.roberson@puppet.com>

# Update packages
RUN apt-get update -y

# Install packages
RUN apt-get install -y curl wget apt-utils

# Remove apt cache to make the image smaller
RUN rm -rf /var/lib/apt/lists/*
# Install bolt
RUN wget https://apt.puppet.com/puppet6-release-xenial.deb
RUN dpkg -i puppet6-release-xenial.deb
RUN apt-get update 
RUN apt-get install puppet-bolt

# Remove apt cache to make the image smaller
RUN rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /bolt

CMD ["bolt"]