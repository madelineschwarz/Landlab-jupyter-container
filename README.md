## Containerized local jupyter notebook for running landlab
## Madeline Schwarz 7/3/2022
## Modified from: boilerplate-machine-learning-dockerfiles-for-miniconda [![Build Status][travis-image]][travis-url] [![License: MIT][license-image]][license-url]

## Reference links:
Landlab Documentation: https://landlab.readthedocs.io/en/latest/index.html
OG Dockerfile source: https://github.com/keidrun/boilerplate-machine-learning-dockerfiles-for-miniconda


Boilerplate of Dockerfiles for Landlab with Miniconda.

## Required
- Docker installed

## File List
Dockerfile.mini.LL -- builds miniconda/Landlab container with local jupyter notebook (recommended) ; notebook launches when container is built 

Dockerfile -- builds a miniconda/Landlab container (without local jupyter notebook, for use with IDE)

landlab2 -- folder containing all files & tutorial notebooks from latest Landlab release 

## Getting started:
- Clone this repo
- Run `docker-compose up --build` in terminal
- copy and paste last url into browser to launch local jupyter notebook
- Note: when re-launching container after exiting, you may need to enter the token for access (located in the launch url)

## Default Settings
- Port: `8888:8888`
- Volume: `./landlab2:/landlab2`
- --notebook-dir: `/landlab2
