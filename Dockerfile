FROM darribas/gds:4.1

# so I have write permissions for mounted volume
USER root
ENV NB_USER=jovyan
ENV NB_UID=1001
ENV NB_GID=1001

# install extra packages
RUN conda update -n base conda \
    && conda install -c conda-forge jupytext \
    && conda install -c conda-forge geoplot

RUN conda update jupyterlab
RUN jupyter labextension install @axlair/jupyterlab_vim \
     && jupyter labextension enable @axlair/jupyterlab_vim
RUN jupyter labextension install @jupyterlab/toc

# install R packages
RUN R -e "install.packages(c( \
    'corrplot', \
    'spgwr', \
    'nomisr' \
    ), repos='https://cran.rstudio.com');"


