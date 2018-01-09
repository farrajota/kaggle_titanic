FROM jupyter/scipy-notebook:400c69639ea5

USER root

COPY ./notebooks ./work
RUN fix-permissions /home/jovyan/work

USER $NB_USER
