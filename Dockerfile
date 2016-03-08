FROM ubuntu:trusty
MAINTAINER Igor Ajdisek <igor@3fs.si>

RUN sudo apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive sudo apt-get install -qq -y --no-install-recommends \
        subversion mercurial git-core build-essential ruby1.9.1 ruby1.9.1-dev && \
    sudo gem install --no-rdoc --no-ri fpm && \
    sudo apt-get remove -y ruby1.9.1-dev && sudo apt-get autoremove -y
