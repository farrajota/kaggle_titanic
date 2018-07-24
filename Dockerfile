FROM jupyter/pyspark-notebook:59904dd7776a

USER root

USER $NB_USER

COPY ./requirements.txt .
RUN pip install -r requirements.txt
