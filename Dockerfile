
#######################################################
# Dockerfile to build Vaadin Testbench container images
# Based on Ubuntu
#######################################################
FROM ubuntu:14.04
MAINTAINER John Ahlroos
# Install prerequisites
RUN apt-get update
RUN apt-get upgrade -y
# Install software
RUN apt-get install -y maven xvfb openjdk-7-jdk ratpoison xterm xfonts-base x11vnc
# Add scripts
ADD ./scripts/ /home/root/scripts
# Add project directoy
VOLUME /project
# Add maven cache directory
VOLUME /maven-cache
#Bootstrap script
ENTRYPOINT ["bash", "/home/root/scripts/run.sh"]
