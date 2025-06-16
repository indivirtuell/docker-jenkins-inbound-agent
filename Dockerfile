FROM jenkins/inbound-agent:latest-jdk21

LABEL MAINTAINER="indivirtuell <office@indivirtuell.net>"

USER root

RUN apt --allow-releaseinfo-change-suite update

RUN apt dist-upgrade -y

RUN apt install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common chromium xvfb

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
RUN mv kubectl /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl

RUN groupadd docker

RUN usermod -aG docker jenkins

ENV CHROME_BIN /usr/bin/chromium

USER jenkins
