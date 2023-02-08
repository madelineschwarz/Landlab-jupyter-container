FROM continuumio/miniconda3

LABEL maintainer="Keid"

RUN conda update conda \
  && conda update --all \
  #add conda forge & default channels
  && conda config --add channels conda-forge \
  && conda config --add channels default \
  # install jupyter notebooks
  && conda install jupyter \
  # install landlab library
  && conda install landlab -c conda-forge \ 
  && conda update landlab \
  && conda clean --all

VOLUME /landlab2

EXPOSE 8888
# launches local jupyter notebook at start of container
CMD jupyter notebook --notebook-dir=/landlab2 --ip=0.0.0.0 --port=8888 --no-browser --allow-root
