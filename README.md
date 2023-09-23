# Mojo mandelbrot tutorial

This tutorial is primary an oportunity to discover and learn more on the mojo programming language. You can check the original tutorial [here](<https://docs.modular.com/mojo/notebooks/Mandelbrot.html>).

## Aim of this repository

I will not use the Mojo SDK and rather try to understand how to use the mojo language with directly on a host system.

I'll use Ubuntu 22.04 jammy and the mojo compiler from the mojo debian package repository.
Ubuntu 22.04 will run on WSL2 on my windows 11 machine.

I'll try too determine the system dependecies of the mojo compiler and the mojo runtime.
And how integrate it in our traditionnal os based systems

## First results

The first installation was complicated due too mutltiple python versions installed in local and to the mix of system wide dependencies and local dependencies.

It's the Python object in Mojo that was complicated to install.
The python version need to be 3.10 or 3.8.

The system need to have only one available python version and matplotlib from Python mojo object wasn't able to render proper vectors graphics and the system version need to bee installed with apt manager.
I've lost a good amount of time to try using conda and this was not successul.

I finally achive the Python module importation by removing at a system wide scale all version of python, his dependecies and reinstall modular and mojo.

I've decided to the best to come option was to use a docker container in order to guaranty the reproducibility and isolation of the installation.

## Docker container

I'll begin by updating and using my previous work on mojo docker images that you can find here: [mojo-docker](<https://github.com/ArthurB2077/mojo-docker-image>)
Or here on docker hub: [mojo-docker](<https://hub.docker.com/repository/docker/abequie/mojo/general>)
