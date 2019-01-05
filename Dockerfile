FROM jenkins/jenkins:lts
USER root
RUN \
 apt-get update && \
 apt-get install -y \
        file \
        make && \
# cleanup
 apt-get clean && \
 rm -rf \
        /tmp/* \
        /var/lib/apt/lists/* \
        /var/tmp/*
USER jenkins
