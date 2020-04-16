FROM ubuntu:bionic
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y wget gdebi gnupg
RUN echo 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/' > /etc/apt/sources.list.d/cran.list && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
RUN apt-get update
RUN apt-get install -y python3-sklearn 
RUN apt-get install -y r-recommended

