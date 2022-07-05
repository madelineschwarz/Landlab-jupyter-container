# miniconda - container set up for running Landlab 

FROM continuumio/miniconda3

WORKDIR /LL
RUN conda update conda \
  && conda update --all \
  && conda config --add channels conda-forge \
  && conda config --add channels default \
  #install base level packages:
  && conda install landlab -c conda-forge \ 
  && conda update landlab \
  && conda clean --all

VOLUME /landlab2

EXPOSE 8888
COPY . .
