FROM continuumio/anaconda3:5.2.0
RUN conda install -y seaborn==0.9.0
RUN pip install rise
RUN jupyter-nbextension install rise --py --sys-prefix
RUN jupyter nbextension enable rise --py --sys-prefix
RUN apt-get -y update
RUN apt-get install --fix-missing -y openjdk-8-jdk jq

EXPOSE 8888