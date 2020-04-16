FROM ubuntu:bionic
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y wget gdebi gnupg openssh-server
RUN cd /etc/ssh && cp sshd_config sshd_config_original && sed -e '/X11DisplayOffset/s/.*/X11DisplayOffset 10/' -e '/X11UseLocalhost/s/.*/X11UseLocalhost no/' sshd_config_original > sshd_config
RUN echo 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/' > /etc/apt/sources.list.d/cran.list && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
RUN apt-get update
RUN apt-get install -y python3-sklearn idle-python3.6
RUN apt-get install -y r-recommended
ENTRYPOINT service ssh start && /bin/bash

