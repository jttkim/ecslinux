# Docker Image for UH ECS Practical Work

**This work is in initial stages of development.**

This repository is to put together a Docker image to enable
students of the Engineering and Computer Science School of the
University of Hertfordshire to do practical work while being
physically away from the University.

This image so far provides:

* Editors: Emacs, Gedit, Vim
* OpenSSH, with a modified configuration to enable X11 forwarding
* Ocatve (Open Source Matlab-like system)
* R
* Python3 with IDLE


## Usage Instructions

Install Docker on your computer. Docker Desktop is the current version
and preferable in terms of ease of installation and continued support.
However, older computers may not meet the requirements for Docker Desktop,
for these, try using Docker Toolbox. Documentation of these options can
be found here:

* Docker Desktop: https://www.docker.com/products/docker-desktop
* Docker Toolbox: https://docs.docker.com/toolbox/toolbox_install_windows/

Further prerequisites are:

* an ssh client (`putty` is a classical ssh client for Windows)
* an X11 server (Xming or Hummingbird are options for Windows)


With Docker and the prerequisites installed, run the commands

    docker pull jttkim/ecspractical:latest
    docker run -t -i jttkim/ecspractical:latest

You will start a container with the `ecspractical` image and get a
root prompt.

**TODO: more detailed step-by-step instructions**

In the container, create a user and then ssh into the container using
that user, with X11 forwarding. You can then launch `octave` or
`idle-python3.6`.

**Important:** All files in the container are lost when you exit the
root session started with the `docker run` command. Use a bind-mount
for saving files permanently.



## Planned / To Do:

* Netlab
* Rstudio
* Further editors. Atom and Sublime Text are not available from
  the standard Ubuntu repositories.


## Tensorflow

The Tensorflow project provide a selection of Docker images that
appear to be suitable for practical work here:

    https://www.tensorflow.org/install/docker


