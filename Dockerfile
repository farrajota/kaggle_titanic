FROM jupyter/pyspark-notebook:59904dd7776a

USER root

COPY ./notebooks ./work
RUN fix-permissions /home/jovyan/work

USER $NB_USER

COPY ./requirements.txt .
RUN pip install -r requirements.txt
